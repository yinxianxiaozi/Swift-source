//
//  main.swift
//  方法调度
//
//  Created by 张文艺 on 2022/9/1.
//

import Foundation
//1、导入swift头文件

print("Hello, World!")
/*
 1、静态派发
 */
//struct WYTeacher {
//    func teach() {
//        print("teach")
//    }
//}
//var wy = WYTeacher()
//wy.teach()

/*
 2、动态派发
 */

class WYTeacher {
    func teach() {
        print("teach")
    }
    func teach2() {
        print("teach2")
    }
    func teach3() {
        print("teach3")
    }
    func teach4() {
        print("teach4")
    }
}

var wy = WYTeacher()
wy.teach()
wy.teach2()
wy.teach3()
wy.teach4()
print("end")
/*
extension WYTeacher {
    func teach5() {
        print("teach5")
    }
}

class WYStudent: WYTeacher {
    func teach6() {
        print("teach6")
    }
}
*/

/*
 3、final
 */
/*
class WYTeacher {
    final func teach(){ print("teach") }
    func teach2(){ print("teach2") }
    func teach3(){ print("teach3") }
    func teach4(){ print("teach4") }
    @objc deinit{}
    init(){}
}
*/

/*
 4、@objc
 */
/*
class WYTeacher{
    @objc func teach(){ print("teach") }
    func teach2(){ print("teach2") }
    func teach3(){ print("teach3") }
    func teach4(){ print("teach4") }
    @objc deinit{}
    init(){}
}
*/

/*
 5、dynamic
 */
/*
class WYTeacher: NSObject {
    dynamic func teach(){ print("teach") }
    func teach2(){ print("teach2") }
    func teach3(){ print("teach3") }
    func teach4(){ print("teach4") }
    @objc deinit{}
    override init(){}
}
*/

/*
 6、动态消息转发
 */
/*
class WYTeacher{
    @objc dynamic func teach(){ print("teach") }
    func teach2(){ print("teach2") }
    func teach3(){ print("teach3") }
    func teach4(){ print("teach4") }
    @objc deinit{}
    init(){}
}

var wy = WYTeacher()
wy.teach()
*/

/*
 7、方法交换
 */
/*
class WYTeacher: NSObject {
    dynamic func teach(){ print("teach") }
    func teach2(){ print("teach2") }
    func teach3(){ print("teach3") }
    func teach4(){ print("teach4") }
    @objc deinit{}
    override init(){}
}

//使用@_dynamicReplacement，将当前方法teach5和参数中teach进行转换
extension WYTeacher{
    @_dynamicReplacement(for: teach)
    func teach5(){
        print("teach5")
    }
}
var wy = WYTeacher()
wy.teach()
*/
