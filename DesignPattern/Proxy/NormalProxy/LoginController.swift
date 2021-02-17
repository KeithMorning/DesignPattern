//
//  LoginController.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/16.
//

import Foundation

class LoginController {
    //let user:IUser = User() //替换原来代码
    let user:IUser = UserProxy(user: User()) //使用接口实现
    //let user:IUser = UserProxyInherit() //使用继承实现的代理模式
    func run(){
        self.user.login(name: "DTtime", pwd: "123456") {
            print("login finish");
        }
        
        self.user.register(name: "DTTime", email: "DTTime@net263.com") { (success) in
            print("register is success \(success)");
        }
    }
}
