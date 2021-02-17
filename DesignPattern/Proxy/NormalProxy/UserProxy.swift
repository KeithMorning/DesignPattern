//
//  UserProxy.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/16.
//

import Foundation

//基于接口设计的代理模式
class UserProxy: IUser {
    
    let user:IUser
    
    init(user:IUser){
        self.user = user
    }
    
    func login(name: String, pwd: String, complete: @escaping () -> Void) {
        print("log the user \(name) start \(Date())")
        self.user.login(name: name, pwd: pwd, complete: complete);
        print("log the user finish time is \(Date())");
    }
    
    func register(name: String, email: String, complete: @escaping (Bool) -> Void) {
        print("log the user \(name) register at \(Date())")
        self.user.register(name: name, email: email, complete: complete);
        print("log the user finish register time at \(Date())");
    }
}
