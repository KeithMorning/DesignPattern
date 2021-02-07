//
//  DPFacotry.m
//  Test
//
//  Created by Keith on 2021/2/6.
//

#import <XCTest/XCTest.h>
#import "DPRuleConfigSource.h"
#import "DPSimpleFactory.h"
#import "DPRuleConfigParsers.h"
#import "DPNormalFactory.h"

@interface DPFacotry : XCTestCase

@end

@implementation DPFacotry

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testSimpleFactory {
    id<DPIRuleConfigParser> parser = [DPSimpleFactory createParserWithFormt:@"json"];
    XCTAssertEqual(parser.class, DPJSONRuleConfigParsers.class);
}

- (void)testConfigRuleSouce{
    NSString *file = @"/User/Me/Documents/config.xml";
    NSDictionary *config = [[DPRuleConfigSource new] loadfile:file];
    XCTAssertEqual(config[@"format"], @"xml");
    
    NSDictionary *config2 = [[DPRuleConfigSource new] loadfileByNormalFactory:file];
    XCTAssertEqual(config2[@"format"], @"xml");

    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
