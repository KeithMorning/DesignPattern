//
//  TestPrototype.swift
//  Test
//
//  Created by Keith on 2021/2/9.
//

import XCTest

class TestPrototype: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPrototype() throws {
        let car = DSCar(name: "Pollo", wheel: Wheel(name: "circel"), engineCount: 2);
        let copycar = car.copy()
        car.engineCount = 4
        
        XCTAssert(car !== copycar)
        XCTAssertEqual(car.name, copycar.name)
        XCTAssertNotEqual(car.engineCount, copycar.engineCount)
        
    
    }
    
    func testContra() {
        class Animal {
            
        }
        
        class Dog:Animal {
            
        }
        
        class GrayDog:Dog{
            
        }
        
        func f(_ g: (Dog)->(Dog))->String{
            return "dog";
        }
        
        func g(a:Animal)->Animal{
            return a
        }
        
        //f(g) //error
        
        func h(a:Animal)->GrayDog{
            return a as! GrayDog
        }
        
        let str = f(h)
        
        
        func l(a:GrayDog)->GrayDog{
            return a
        }
        //error
        //let str2 = f(l)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
