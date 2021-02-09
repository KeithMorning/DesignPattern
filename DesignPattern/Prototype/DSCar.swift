//
//  DSCard.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/9.
//

import Foundation

protocol Copyable {
    func copy()->Self
}

class Wheel:Copyable {
    var name:String
    
    required init(name:String){
        self.name = name
    }
    func copy() -> Self {
        return Self.init(name: self.name)
    }
    
}

class DSCar:Copyable {
    var name:String
    var wheel:Wheel
    var engineCount:Int
    
   required init(name:String,wheel:Wheel,engineCount:Int) {
        self.name = name
        self.wheel = wheel
        self.engineCount = engineCount
    }
    
    func copy() -> Self {
        let copywheel = self.wheel.copy()
        let car = Self.init(name: self.name, wheel: copywheel, engineCount: self.engineCount)
        return car
    }
}
