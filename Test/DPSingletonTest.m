//
//  DPSingletonTest.m
//  Test
//
//  Created by KeithXi on 2021/2/4.
//

#import <XCTest/XCTest.h>
#import "DPSingleton.h"

@interface DPSingletonTest : XCTestCase

@end

@implementation DPSingletonTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testIsSingleton {
    DPSingleton *singleTon = [DPSingleton defaultSigleton];
    DPSingleton *singleTonByNew = [[DPSingleton alloc] init];
    DPSingleton *sigleTonByCopy = [singleTon mutableCopy];
    
    XCTAssert([singleTon isEqual:singleTonByNew],@"the singleTon is same to new");
    XCTAssert([singleTon isEqual:sigleTonByCopy],@"the singleTon is same to copy");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
