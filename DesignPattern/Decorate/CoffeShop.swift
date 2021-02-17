//
//  CoffeShop.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/17.
//

import Foundation

class CoffeShop {
    
    func sailSuggerMilkCoffe()->Double {
        //做一杯牛奶加糖咖啡
        let drink = Drink()
        let coffeDrink:Drink = CoffeeDrink(drink: drink)
        let milkCoffeDrink:Drink = MilkDrink(drink: coffeDrink)
        let suggermilkCoffeDrink:Drink = Sugger(drink: milkCoffeDrink)
        return suggermilkCoffeDrink.pay()
    }
}
