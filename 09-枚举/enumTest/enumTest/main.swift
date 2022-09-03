//
//  main.swift
//  enumTest
//
//  Created by 张文艺 on 2022/9/3.
//

import Foundation


print("Hello, World!")

/*
 1、原始值
 */
/*
enum Week: String{
    case MON = "MON"
    case TUE = "TUE"
    case WED = "WED"
    case THU = "THU"
    case FRI = "FRI"
    case SAT = "SAT"
    case SUN = "SUN"
}
*/
/*
 2、关联值
 */
/*
enum Shape{
    case circle(radius: Double)
    case rectangle(width: Int, height: Int)
}
*/
/*
 3、rawValue的实现原理
*/
/*
enum Week: String{
    case MON = "MON"
    case TUE = "TUE"
    case WED = "WED"
    case THU = "THU"
    case FRI = "FRI"
    case SAT = "SAT"
    case SUN = "SUN"
}

let mon = Week.MON.rawValue
*/

/*
 4、init方法
 */
/*
enum Week: String{
    case MON = "MON"
    case TUE = "TUE"
    case WED = "WED"
    case THU = "THU"
    case FRI = "FRI"
    case SAT = "SAT"
    case SUN = "SUN"
}

print(Week.MON.rawValue)

let w = Week.MON.rawValue

Week.init(rawValue: "MON")

print("end")
*/
/*
enum Week: String{
    case MON = "MON"
    case TUE = "TUE"
    case WED = "WED"
    case THU = "THU"
    case FRI = "FRI"
    case SAT = "SAT"
    case SUN = "SUN"
}
print(Week.init(rawValue: "MON"))
print(Week.init(rawValue: "Hello"))
*/

/*
 5、模式匹配，原始值
 */
/*
enum Week: String{
    case MON
    case TUE
    case WED
    case THU
    case FRI
    case SAT
    case SUN
}

var current: Week?
switch current {
    case .MON:print(Week.MON.rawValue)
    case .TUE:print(Week.MON.rawValue)
    case .WED:print(Week.MON.rawValue)
    default:print("unknow day")
}

*/
/*
 6、模式匹配，关联值
 */
/*
enum Shape{
    case circle(radius: Double)
    case rectangle(width: Int, height: Int)
}

let shape = Shape.circle(radius: 10)
switch shape{
    case .circle(let radius):
        print("circle radius: \(radius)")
    case .rectangle(let width, var height):
        height += 1
        print("rectangle width: \(width) height: \(height)")
}
*/
 
/*
 7、内存大小
 */
/*
//只有一个成员
enum NoMean1{
    case a
}
print(MemoryLayout<NoMean1>.size)
print(MemoryLayout<NoMean1>.stride)

//多个成员
enum NoMean2{
    case a
    case b
}
print(MemoryLayout<NoMean2>.size)
print(MemoryLayout<NoMean2>.stride)
*/
/*
enum NoMean3{
    case a
    case b
    case c
    case d
}

var tmp = NoMean3.a
var tmp1 = NoMean3.b
var tmp2 = NoMean3.c
var tmp3 = NoMean3.d
print(MemoryLayout<NoMean3>.size)
print(MemoryLayout<NoMean3>.stride)
print("end")
*/

/*
 8、内存大小：关联值
 */
/*
enum Shape{
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
}
print(MemoryLayout<Shape>.size)
print(MemoryLayout<Shape>.stride)

var rectangle = Shape.rectangle(width: 10, height: 20)
print("end")
*/

/*
 9、递归枚举
 */
/*
//用枚举表示链表结构
//放在case前
enum List1<T>{
    case end
    //表示case使是引用来存储
    indirect case node(T, next: List1<T>)
}

//放在enum前
indirect enum List2<T>{
    case end
    case node(T, next: List2<T>)
}
*/
/*
enum List<T>{
    case end
    indirect case node(T, next: List<T>)
}
print(MemoryLayout<List<Int>>.size)
print(MemoryLayout<List<Int>>.stride)

print(MemoryLayout<List<String>>.size)
print(MemoryLayout<List<String>>.stride)
*/
/*
enum List<T>{
    case end
    indirect case node(T, next: List<T>)
}

var node = List<Int>.node(10, next: List<Int>.end)

print(MemoryLayout.size(ofValue: node))
print(MemoryLayout.stride(ofValue: node))

*/
enum List<T>{
    case first
    case end
    indirect case node(T, next: List<T>)
}

var node = List<Int>.end
print(MemoryLayout.size(ofValue: node))

/*
10、混编
*/
// 方式一：typedef enum

