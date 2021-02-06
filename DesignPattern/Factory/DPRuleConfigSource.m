//
//  DPRuleConfigSource.m
//  DesignPattern
//
//  Created by Keith on 2021/2/6.
//

#import "DPRuleConfigSource.h"
#import "DPSimpleFactory.h"

@implementation DPRuleConfigSource

- (NSDictionary *)loadfile:(NSString *)filePath{
    NSString *extenstion = [self getfilePathExtenstion:filePath];
    id<DPIRuleConfigParser> pareser = [DPSimpleFactory createParserWithFormt:extenstion];
    NSDictionary *configrule = [pareser parse];
    return configrule;
}

- (NSString *)getfilePathExtenstion:(NSString *)file{
    return [file pathExtension];
}

@end
