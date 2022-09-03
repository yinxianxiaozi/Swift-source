//
//  main.swift
//  MirrorTest
//
//  Created by 张文艺 on 2022/9/3.
//

import Foundation

print("Hello, World!")

/*
 1、使用
 */
/*
class WYTeacher: NSObject {
    var age: Int = 18
}
var t = WYTeacher()
let mirror = Mirror(reflecting: t.self)
for pro in mirror.children{
    print("\(String(describing: pro.label)): \(pro.value)")
}
*/

/*
 2、JSON解析
 */
/*
//Int、String遵守协议
extension Int: CustomJSONMap{}
extension String: CustomJSONMap{}

//1、定义一个JSON解析协议
protocol CustomJSONMap {
    func jsonMap() -> Any
}
//2、提供一个默认实现
extension CustomJSONMap{
    func jsonMap() -> Any{
        let mirror = Mirror(reflecting: self)
        //递归终止条件
        guard !mirror.children.isEmpty else {
            return self
        }
        //字典，用于存储json数据
        var keyValue: [String: Any] = [:]
        //遍历
        for children in mirror.children {
            if let value = children.value as? CustomJSONMap {
                if let keyName = children.label {
                    //递归
                    keyValue[keyName] = value.jsonMap()
                }else{
                    print("key是nil")
                }
            }else{
                print("当前-\(children.value)-没有遵守协议")
            }
        }
        return keyValue
    }
}

//3、让类遵守协议（注意：类中属性的类型也需要遵守协议，否则无法解析）
class WYTeacher: CustomJSONMap {
    var age = 18
    var name = "WY"
}

//使用
var t = WYTeacher()
print(t.jsonMap())
*/

/*
3、增加Error
*/

//定义错误类型
enum JSONMapError: Error{
    case emptyKey
    case notConformProtocol
}

//Int、String遵守协议
//extension Int: CustomJSONMap{}
//extension String: CustomJSONMap{}

//1、定义一个JSON解析协议
protocol CustomJSONMap {
    func jsonMap() throws -> Any
}
//2、提供一个默认实现
extension CustomJSONMap{
    func jsonMap() throws -> Any{
        let mirror = Mirror(reflecting: self)
        //递归终止条件
        guard !mirror.children.isEmpty else {
            return self
        }
        //字典，用于存储json数据
        var keyValue: [String: Any] = [:]
        //遍历
        for children in mirror.children {
            if let value = children.value as? CustomJSONMap {
                if let keyName = children.label {
                    //递归
                    keyValue[keyName] = try value.jsonMap()
                }else{
                    throw JSONMapError.emptyKey
                }
            }else{
                throw JSONMapError.notConformProtocol
            }
        }
        return keyValue
    }
}

//3、让类遵守协议（注意：类中属性的类型也需要遵守协议，否则无法解析）
class WYTeacher: CustomJSONMap {
    var age = 18
    var name = "WY"
}

//使用
//var t = WYTeacher()
//print(try t.jsonMap())
/*
extension JSONMapError: LocalizedError{
    var errorDescription: String?{
        switch self {
        case .emptyKey:
            return "key为空"
        case .notConformProtocol:
            return "没有遵守协议"
        }
    }
}

var t = WYTeacher()
do{
    try t.jsonMap()
}catch{
    print(error.localizedDescription)
}
*/

//CustomNSError相当于NSError
extension JSONMapError: CustomNSError{
    var errorCode: Int{
        switch self {
        case .emptyKey:
            return 404
        case .notConformProtocol:
            return 504
        }
    }
}

var t = WYTeacher()
do{
    try t.jsonMap()
}catch{
    print((error as? JSONMapError)?.errorCode)
}
