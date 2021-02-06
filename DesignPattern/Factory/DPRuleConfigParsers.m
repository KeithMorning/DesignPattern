//
//  DPRuleConfigParsers.m
//  DesignPattern
//
//  Created by Keith on 2021/2/6.
//

#import "DPRuleConfigParsers.h"

@implementation DPJSONRuleConfigParsers

- (NSDictionary *)parse{
    return @{
        @"format":@"json"
    };
}

@end

@implementation DPXMLRuleConfigParsers

- (NSDictionary *)parse{
    return @{
        @"format":@"xml"
    };
    
}

@end

@implementation DPYAMLRuleConfigParsers

- (NSDictionary *)parse{
    return @{
        @"format":@"yaml"
    };
    
}

@end

@implementation DPPlistRuleConfigParsers

- (NSDictionary *)parse{
    return @{
        @"format":@"plist"
    };
    
}

@end

