//
//  CoffeeDrink.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/17.
//

import Foundation

let basePrice = 0.0
let milkPrice = 0.5
let coffeePrice = 2.5
let suggerPrice = 1.2
let coocaPrice = 1.3

//使用抽象类实现
class Drink{
    let price:Double = basePrice
    func pay() -> Double {
        return price
    }
}

class CoffeeDrink:Drink {
    private let drink:Drink
    init(drink:Drink){
        self.drink = drink
    }
    
    override func pay() -> Double {
        self.drink.pay() + coffeePrice
    }
}

class MilkDrink:Drink {
    private let drink:Drink
    init(drink:Drink){
        self.drink = drink
    }
    
    override func pay() -> Double {
        self.drink.pay() + milkPrice
    }
}

class Sugger:Drink {
    private let drink:Drink
    init(drink:Drink) {
        self.drink = drink
    }
    
    override func pay() -> Double {
        self.drink.pay() + suggerPrice
    }
}

