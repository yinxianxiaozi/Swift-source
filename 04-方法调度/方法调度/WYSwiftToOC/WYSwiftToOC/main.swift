//
//  main.swift
//  WYSwiftToOC
//
//  Created by 张文艺 on 2022/9/1.
//

import Foundation

print("Hello, World!")

class WYTeacher: NSObject {
    @objc func teach(){ print("teach") }
    func teach2(){ print("teach2") }
    func teach3(){ print("teach3") }
    func teach4(){ print("teach4") }
    @objc deinit{}
    override init(){}
}

