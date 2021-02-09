//
//  DPBuilderTest.m
//  Test
//
//  Created by Keith on 2021/2/7.
//

#import <XCTest/XCTest.h>
#import "DPBuilderConfig.h"

@interface DPBuilderTest : XCTestCase

@end

@implementation DPBuilderTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testBuilderConfig {
    DPBuilderConfig *config = [DPBuilderConfig new];    
    [config makeConfigBuilder:^DPBuiler *(DPBuiler * _Nonnull buildconfig) {
        buildconfig.setMin(3).setMax(10).setDebugMode(YES).setName(@"testname").build();
        return buildconfig;
        
    }];
    
    XCTAssertEqual(config.configname, @"testname");
    XCTAssertEqual(config.maxValue, 10);
    XCTAssertEqual(config.minValue, 3);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
