//
//  MsgSenders.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/17.
//

import Foundation

class EmailSender:IMsgSender{
    func send(msg: String) {
        print("email send message \(msg)")
    }
}

class PhoneSender:IMsgSender{
    func send(msg: String) {
        print("phone call message \(msg)")
    }
}

class WechatSender:IMsgSender{
    func send(msg: String) {
        print("wechat send message \(msg)")
    }
}
