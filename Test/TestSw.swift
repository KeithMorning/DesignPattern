//
//  TestSw.swift
//  Test
//
//  Created by KeithXi on 2021/2/4.
//

import XCTest

class TestSw: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSingleTonClass() throws {
        let swSingle1 = SWSingletonV1.shared;
        //let swSignle = SWSingletonV1(); /// shoule not complie success
        let swSignle2 = SWSingletonV1.shared;
        
        XCTAssert(swSingle1 === swSignle2, "the single ton not work");// to see if memory address is same
        
        let swSingleA = SwSingletonV2.shared;
        let swSingleB = SwSingletonV2.shared;
//        let swsinglenotWork = SwSingletonV2(); //should complie error
        XCTAssert(swSingleA === swSingleB, "this single ton is not work");
        
        
    }
    
    func testSingletonStruct() {
        /// Don't write a struct as a Singleton has no meaning
        var sg1 = SwSingletonStruct.shared;
        let sg2 = SwSingletonStruct.shared;
        sg1.age = 40;
//        let sg3 = SwSingletonStruct();
        XCTAssert(sg1.age != sg2.age, "the struct single ton is not work");
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
