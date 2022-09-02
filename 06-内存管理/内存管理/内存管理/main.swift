//
//  main.swift
//  内存管理
//
//  Created by 张文艺 on 2022/9/2.
//

import Foundation

/*
class  WYTeacher {
    var age: Int = 18
    var name: String = " WY"
}
 
var t = WYTeacher()
 

//创建对象后引用计数默认为1
print(CFGetRetainCount(WYTeacher()))
var t =  WYTeacher()
print(CFGetRetainCount(t))
var t1 = t
print(CFGetRetainCount(t))
var t2 = t
print(CFGetRetainCount(t))
*/


class WYTeacher {
    var age: Int = 18
    var name: String = "WY"
    var stu: WYStudent?
}

class WYStudent {
    var age = 20
    var teacher: WYTeacher?
}

func test(){
    var t = WYTeacher()
    weak var t1 = t
    print("end")
}

test()


