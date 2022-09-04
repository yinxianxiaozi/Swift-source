//
//  main.swift
//  闭包Test
//
//  Created by 张文艺 on 2022/9/4.
//

import Foundation

/*
 1、闭包捕获变量
 */
/*
func makeIncrementer() -> () -> Int{
    var runningTotal = 10
    //内嵌函数，调用外部变量，因此是一个闭包
    func incrementer() -> Int{
        runningTotal += 1
        return runningTotal
    }
    return incrementer
}
let makeInc = makeIncrementer()
print(makeInc())
print(makeInc())
print(makeInc())
*/

/*
 2、闭包变量存储在哪里
 */
//堆中创建的对象
struct HeapObject {
    var type: UnsafeRawPointer
    var refCount1: UInt32
    var refCount2: UInt32
}

//捕获值的结构体
struct Box<T> {
    var refCounted: HeapObject
    var value: T
}

//函数返回值结构体
//BoxType 是一个泛型，最终是由传入的Box决定的
struct FunctionData<BoxType>{
    //内嵌函数地址
    var ptr: UnsafeRawPointer
    var captureValue: UnsafePointer<BoxType>
}

//封装闭包的结构体，目的是为了使返回值不受影响
struct VoidIntFun {
    var f: () ->Int
}

//下面代码的打印结果是什么？
func makeIncrementer() -> () -> Int{
    var runningTotal = 10
    //内嵌函数，也是一个闭包
    func incrementer() -> Int{
        runningTotal += 1
        return runningTotal
    }
    return incrementer
}
let makeInc = VoidIntFun(f: makeIncrementer())

let ptr = UnsafeMutablePointer<VoidIntFun>.allocate(capacity: 1)
//初始化的内存空间
ptr.initialize(to: makeInc)
//将ptr重新绑定内存
let ctx = ptr.withMemoryRebound(to: FunctionData<Box<Int>>.self, capacity: 1) {
     $0.pointee
}
print(ctx.ptr)
print(ctx.captureValue.pointee)

/*
0x0000000100002bc0
Box<Int>(refCounted: _7_Clourse.HeapObject(type: 0x0000000100004038, refCount1: 3, refCount2: 2), value: 10)
*/
