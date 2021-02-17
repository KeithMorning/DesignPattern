//
//  DTProxyTest.m
//  Test
//
//  Created by Keith on 2021/2/16.
//

#import <XCTest/XCTest.h>
#import "DTUserProxy.h"
#import "DTUser.h"

@interface DTProxyTest : XCTestCase

@end

@implementation DTProxyTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testUserCanRun {
    DTUser *auser = [DTUser new];
    id<IDTUser> user = [DTUserProxy proxyWithObject:auser];
    [user login:@"ming" pwd:@"123456" complete:^{
        
    }];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
