//
//  Notifications.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/17.
//

import Foundation

class TraceNotification : Notification{
    
    override func notify(msg: String) {
        super.notify(msg: "[trace]: "+msg)
    }
}

class NormalNotification: Notification {
    override func notify(msg: String) {
        super.notify(msg: "[Normal]: "+msg)
    }

}

class UgencyNotification:Notification{
    override func notify(msg: String) {
        super.notify(msg: "[Ugency]: "+msg)
    }

}
