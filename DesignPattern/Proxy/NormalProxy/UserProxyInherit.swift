//
//  UserProxyInherit.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/16.
//

import Foundation
//如果类接口实现的代码过多，可以用继承的方式
//使用反射是最理想的方式，简单的对象可以用继承实现

class UserProxyInherit:User {
    override func login(name: String, pwd: String, complete: @escaping () -> Void) {
        print("user is login")
        super.login(name: name, pwd: pwd, complete: complete);
        print("user has login finished")
    }
}

