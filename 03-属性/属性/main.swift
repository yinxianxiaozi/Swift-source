//
//  main.swift
//  属性
//
//  Created by 张文艺 on 2022/8/31.
//

import Foundation

print("Hello, World!")

///*
// 1、存储属性
// */
//class WYStudent{
//    var age: Int = 18
//    let name: String = "wy"
//}
//
//let t = WYStudent()
//
//print("end")
//
///*
// 2、计算属性
// */
//class Square{
//    var width: Double = 8.0
//    var area: Double{
//        get{
//            width * width
//        }
//        set{
//            width = sqrt(newValue)
//        }
//    }
//}
//
//print(class_getInstanceSize(Square.self))//24
//
///*
// 3、属性观察器
// */
//class WYStudent2{
//    var name: String = "测试"{
//        //新值存储之前调用
//        willSet{
//            print("willSet newValue \(newValue)")
//        }
//        //新值存储之后调用
//        didSet{
//            print("didSet oldValue \(oldValue)")
//        }
//    }
//}
//var stu2 = WYStudent2()
//stu2.name = "wy"

/*
 4、延迟存储属性
 */
//1、必须有一个初始值
class WYStudent3 {
    var age: Int = 19
}
var stu3 = WYStudent3()
print(class_getInstanceSize(WYStudent3.self))

class WYStudent4 {
    lazy var age: Int? = 19
}
var stu4 = WYStudent4()

//3、延迟存储属性对实例对象大小的影响
print(class_getInstanceSize(WYStudent4.self))

/*
 5、类型属性
 */
class WYStudent5{
    static var age: Int = 18
}

// **** 使用 ****
var age = WYStudent5.age

class WYStudent7{
    static let shareInstance: WYStudent7
}


//****** Swift单例 ******
class WYStudent6{
    //1、使用 static + let 创建声明一个实例对象
    static let shareInstance = WYStudent6.init()
    //2、给当前init添加private访问权限
    private init(){ }
}
//使用(只能通过单例，不能通过init)
var stu6 = WYStudent6.shareInstance


