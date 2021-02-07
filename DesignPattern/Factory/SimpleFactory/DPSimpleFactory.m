//
//  SimpleFactory.m
//  DesignPattern
//
//  Created by Keith on 2021/2/6.
//

#import "DPSimpleFactory.h"
#import "DPRuleConfigParsers.h"

@implementation DPSimpleFactory

+ (id<DPIRuleConfigParser>)createParserWithFormt:(NSString *)format {
    format = format.lowercaseString;
    if ([format isEqualToString:@"json"]){
        return [DPJSONRuleConfigParsers new];
    }else if ([format isEqualToString:@"xml"]){
        return [DPXMLRuleConfigParsers new];
    }else if([format isEqualToString:@"yaml"]){
        return [DPYAMLRuleConfigParsers new];
    }else if([format isEqualToString:@"plist"]){
        return [DPPlistRuleConfigParsers new];
    }
    
    NSAssert(NO, @"we still not support for %@",format);
    return nil;
}


//通过配置完成
+ (id<DPIRuleConfigParser>)createDynamicParserWithFormt:(NSString *)format {
    NSString *classname = [self getParserClass:format];
    Class class = NSClassFromString(classname);
    id<DPIRuleConfigParser> parser= [[class alloc] init];
    return parser;
}

+ (NSString *)getParserClass:(NSString *)format{
    static NSDictionary *formatsmaps;
    formatsmaps = @{
        @"json":NSStringFromClass(DPJSONRuleConfigParsers.class),
        @"xml":NSStringFromClass(DPXMLRuleConfigParsers.class),
        @"yaml":NSStringFromClass(DPYAMLRuleConfigParsers.class),
        @"plist":NSStringFromClass(DPPlistRuleConfigParsers.class)
    };
    
    return [formatsmaps objectForKey:format];
}


@end
