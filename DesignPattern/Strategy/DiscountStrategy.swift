//
//  DiscountStrategy.swift
//  DesignPattern
//
//  Created by Keith on 2021/2/17.
//

//我们实现一个这样的模型，在一件商品的价格优惠计算上有新用户，vip用户，普通用户的区别，普通的实现方式会在客户端代码内增加用户类型判断，来计算折扣，使用策略模式可以将其移动到策略工厂，策略工厂可以使用if-else，也可以使用查表的方式

import Foundation

struct Goods {
    var name:String
    var price:Double
}

enum UserType {
    case New
    case Vip
    case Normal
}

struct GoodsUser {
    var name:String
    var userType:UserType
}

protocol IDiscountStrategy {
    func discount(good:Goods)->Double
}

class NewUserDiscountStrategy:IDiscountStrategy{
    func discount(good: Goods) -> Double {
        if(good.price < 10) {
            return 0;
        }
        return good.price * 0.5;
    }
}

class VipDiscountStrategy:IDiscountStrategy{
    func discount(good: Goods) -> Double {
        return good.price * 0.8;
    }

    
}

class NormalUserDiscountStrategy:IDiscountStrategy{
    
    func discount(good: Goods) -> Double {
        return good.price;
    }
}

class StrategyFactory {
    
    //无状态策略可以复用
    static var map = [UserType:IDiscountStrategy]()
    static var typeToStrategy:[UserType:IDiscountStrategy] = {
        map[.New] = NewUserDiscountStrategy()
        map[.Vip] = VipDiscountStrategy()
        map[.Normal] = NormalUserDiscountStrategy()
        return map
    }()
    
    static func createStrategy(type:UserType) -> IDiscountStrategy {
        return self.typeToStrategy[type]!
    }
}

//使用的时候由type 动态决定使用那个策略
func testDiscountStrategy(good:Goods,user:GoodsUser)->Double{
    let discountStrategy:IDiscountStrategy = StrategyFactory.createStrategy(type: user.userType)
    let discount = discountStrategy.discount(good: good)
    return discount
}
