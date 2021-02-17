//
//  ILogProxy.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/16.
//

import Foundation

protocol IUser {
    func login(name:String,pwd:String, complete:@escaping ()->Void);
    func register(name:String,email:String,complete: @escaping (Bool)->Void);
}

class User:IUser{
    func login(name: String, pwd: String, complete:@escaping () -> Void) {
        print("user is login ...");
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            complete();
        }
        
    }
    
    func register(name: String, email: String, complete: @escaping(Bool) -> Void) {
        print("a new user is register");
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            complete(true);
        }
    }
    
}
