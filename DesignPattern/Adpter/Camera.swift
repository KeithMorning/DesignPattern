//
//  Camera.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/17.
//

import Foundation

protocol ICamera {
    func livePlay(cameraId:String)
    func talkByTalk(cameraId:String)
    func historyTimeLine(cameraId:String)
}
