//
//  TestAdapter.swift
//  Test
//
//  Created by Keith on 2021/2/17.
//

import XCTest

class TestAdapter: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAdapter() throws {

        let camera:ICamera = EZCamera()
        camera.livePlay(cameraId: "C88229999")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
