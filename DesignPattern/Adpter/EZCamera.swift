//
//  EZCamera.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/17.
//

import Foundation

extension EZCamera:ICamera {
    
    func livePlay(cameraId: String) {
        self.ezlivePlay(cameraId: cameraId)
    }
    
    func talkByTalk(cameraId: String) {
        self.eztalkByTalk(cameraId: cameraId)
    }
    
    func historyTimeLine(cameraId: String) {
        self.ezhistoryTimeLine(cameraId: cameraId)
    }
    
    
}


class EZCamera {
    
    func ezlivePlay(cameraId: String) {
        
    }
    
    func eztalkByTalk(cameraId: String) {
        
    }
    
    func ezhistoryTimeLine(cameraId: String) {
        
    }

}
