//
//  main.swift
//  Pointer测试
//
//  Created by 张文艺 on 2022/9/2.
//

import Foundation

print("Hello, World!")

/**
 1、RawPionter的使用（未知类型）
 */
/*
//定义一个未知类型的指针，分配32字节的内存空间大小，对齐方式是8字节对齐
let p = UnsafeMutableRawPointer.allocate(byteCount : 32, alignment : 8)

//advanced代表当前p前进的步长，对于RawPointer来说，我们需要移动的是当前存储值占用的内存大小，即MemoryLayout.stride
//storeBytes: 这里就是存储我们当前的数据，因为是未知类型指针，所以这里需要制定我们当前数据的类型
for i in 0..<4{
     p.advanced(by : i * 8).storeBytes(of : i + 1, as : Int.self)
 }

//load顾明思义是加载，这里是获取值，
//fromBytesOffe：  是相对于我们当前  p 的首地址的偏移
for i in 0..<4{
     let value = p.load(fromByteOffset : i * 8, as : Int.self)
     print("index\(i),value:\(value)")
}
//前面有allocate，就需要有deallocate，成对出现
 p.deallocate()
*/
 
/**
 2、type Pointer
 */
/*
struct WYTeacher {
    var age = 10
    var height = 1.85
}
var t = WYTeacher()

//分配两个WYTeacher大小的空间，不需要指定字节，只需要指定容量，因为已经指定类型
let ptr = UnsafeMutablePointer<WYTeacher>.allocate(capacity: 2)
//初始化第一个空间
ptr.initialize(to: WYTeacher())
//通过successor移动一个类型的大小，初始化第2个空间
ptr.successor().initialize(to: WYTeacher(age: 20, height: 1.75))

//访问方式一：下标
print(ptr[0])
print(ptr[1])

//访问方式二：指针偏移
//因为已经指定了类型，所以就可以直接通过指针进行偏移
print(ptr.pointee)
print((ptr+1).pointee)

//访问方式三：通过successor进行向前偏移一步
print(ptr.pointee)
//successor 往前移动
print(ptr.successor().pointee)

//必须和分配是一致的
ptr.deinitialize(count: 2)
//释放
ptr.deallocate()

*/

/*
 3、绑定：将指向对象的指针换绑到结构体上
 */
/*
struct HeapObject {
    var kind: Int
    var strongRef: UInt32
    var unownedRef: UInt32
}

class  WYTeacher{
    var age = 18
}

var t =  WYTeacher()

//1、获取对象变量的指针
/*
 通过Unmanaged指定内存管理，类似于OC与CF的交互方式（所有权的转换 __bridge）
 - passUnretained 不增加引用计数，即不需要获取所有权
 - passRetained 增加引用计数，即需要获取所有权
 - toOpaque 不透明的指针，返回类型为UnsafeMutableRawPointer
 */
let ptr = Unmanaged.passUnretained(t as AnyObject).toOpaque()

//2、绑定到结构体内存,返回值是UnsafeMutablePointer<T>
/*
 - bindMemory 更改当前 UnsafeMutableRawPointer 的指针类型，绑定到具体的类型值
    - 如果没有绑定，则绑定
    - 如果已经绑定，则重定向到 HeapObject类型上
 */
let heapObject = ptr.bindMemory(to: HeapObject.self, capacity: 1)

//3、访问成员变量
print(heapObject.pointee.kind)
print(heapObject.pointee.strongRef)
print(heapObject.pointee.unownedRef)
*/
 
/*
 4、假定内存绑定：越过类型检查
 */
/*
var tul = (10, 20)
//UnsafePointer<T>
func testPointer(_ p : UnsafePointer<Int>){
    print(p)
}

//tulPtr是元组类型，但是传入的应当是UnsafePointer<Int>。所以需要假定绑定
withUnsafePointer(to: &tul) { (tulPtr: UnsafePointer<(Int, Int)>) in
    //不能使用bindMemory，因为已经绑定到具体的内存中了
    //使用assumingMemoryBound，假定内存绑定，目的是告诉编译器ptr已经绑定过Int类型了，不需要再检查memory绑定
    testPointer(UnsafeRawPointer(tulPtr).assumingMemoryBound(to: Int.self))
}
*/

/*
 5、举例
 */
/*
struct HeapObject {
    var strongRef: UInt32 = 10
    var unownedRef: UInt32 = 20
}
var  t = HeapObject()

func testPointer(_ p: UnsafePointer<Int>){
   print(p)
}
//需要传入的类型是UnsafePointer<Int>，而我们拿到的是UInt32，所以需要越过类型检查
//获取结构体属性的指针传入函数
withUnsafePointer(to: &t) { (ptr: UnsafePointer<HeapObject>) in
    //1. 获取变量
    let strongRef = UnsafeRawPointer(ptr) + MemoryLayout<HeapObject>.offset(of: \HeapObject.strongRef)!
    //2. 传递strongRef属性的值
    testPointer(strongRef.assumingMemoryBound(to: Int.self))
}
*/

/*
 6、临时绑定
 */
var age = 10
func testPointer(_ p: UnsafePointer<Int64>){
   print(p)
}

withUnsafePointer(to: &age) { (ptr: UnsafePointer<Int>) in
    testPointer(ptr)
}


/*
var age = 10
func testPointer(_ p: UnsafePointer<Int64>){
   print(p)
}
//ptr类型为UnsafePointer<Int>
let ptr = withUnsafePointer(to: &age) {$0}
//拿到的指针类型是UnsafePointer<Int>，而函数参数的类型为 UnsafePointer<Int64>，但同时又不愿意更改ptr的指针类型
//先临时绑定到Int64.self，并且作为参数传入，参数类型为UnsafePointer<Int64>。在这里就可以被testPointer调用了
ptr.withMemoryRebound(to: Int64.self, capacity: 1) { (ptr: UnsafePointer<Int64>)  in
    testPointer(ptr)
}
*/
