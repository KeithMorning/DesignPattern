//
//  NotificationCenter.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/17.
//

import Foundation
class NotificationCenter{
    
    //此处可以通过读配置的方式进行配置
    func run() {
        //trace notification 的配置
        let msgsender = EmailSender()
        let traceNotifioncation =  TraceNotification(msgSender: msgsender);
        traceNotifioncation.notify(msg: "this user has buy a book");
        
        let wechatmsgsender = WechatSender()
        let normalNotification = NormalNotification(msgSender: wechatmsgsender)
        normalNotification.notify(msg: "some request failed becase of the bad network")
        
        let phonemsgSender = PhoneSender()
        let ugencyPhoneNotification = UgencyNotification(msgSender: phonemsgSender);
        let wechatmsgsender2 = WechatSender()
        let ugencyWechatNotification = UgencyNotification(msgSender: wechatmsgsender2)
        let msg = "service is down!!";
        ugencyPhoneNotification.notify(msg: msg)
        ugencyWechatNotification.notify(msg: msg)
    }
}
