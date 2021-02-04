//
//  SWSingleton.swift
//  DesignPattern
//
//  Created by KeithXi on 2021/2/4.
//

import Foundation

let signle = SWSingletonV1()
class SWSingletonV1 {
    class var shared:SWSingletonV1 {
        return signle
    }
    fileprivate init (){}
}

class SwSingletonV2 {
    static let shared = SwSingletonV2()
    private init() {}
}

///产生单例
struct SwSingletonStruct {
    static let shared = SwSingletonStruct()
    private init(){}
    
    var age:Int = 5
}
