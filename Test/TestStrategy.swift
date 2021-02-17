//
//  TestStrategy.swift
//  Test
//
//  Created by Keith on 2021/2/17.
//

import XCTest

class TestStrategy: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testStrategy() throws {
        let cup = Goods(name: "cup", price: 3.0)
        let user = GoodsUser(name: "iOSer", userType: .Normal)
        let goodprice = testDiscountStrategy(good: cup, user: user)
        XCTAssert(goodprice == 3.0, "Normal has no discount for goods")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
