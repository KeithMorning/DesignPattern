//
//  Notification.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/17.
//

import Foundation

//建立消息抽象的框架
class Notification {
    var msgSender:IMsgSender
    init(msgSender:IMsgSender){
        self.msgSender = msgSender
    }
    
    func notify(msg:String) {
        self.msgSender.send(msg: msg)
    }
    
}
