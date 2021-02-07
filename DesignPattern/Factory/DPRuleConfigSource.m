//
//  DPRuleConfigSource.m
//  DesignPattern
//
//  Created by Keith on 2021/2/6.
//


#import "DPRuleConfigSource.h"
#import "DPSimpleFactory.h"
#import "DPIConfigFacotry.h"
#import "DPNormalFactory.h"

@implementation DPRuleConfigSource

//由于pareser 的创建非常简单，使用简单工厂
-(NSDictionary *)loadfile:(NSString *)filePath{
    NSString *extenstion = [self getfilePathExtenstion:filePath];
    id<DPIRuleConfigParser> pareser = [DPSimpleFactory createParserWithFormt:extenstion];
    NSDictionary *configrule = [pareser parse];
    return configrule;
}

//当parser 创建复杂时，封装每个parser 创建过程作为工厂
- (NSDictionary *)loadfileByNormalFactory:(NSString *)filePath{
    NSString *extenstion = [self getfilePathExtenstion:filePath];
    id<DPIConfigFacotry> factory = [DPNormalFactory createWithFileExtision:extenstion];
    id<DPIRuleConfigParser> parser = [factory createNormalParser];
    NSDictionary *configrule = [parser parse];
    return configrule;
}


- (NSString *)getfilePathExtenstion:(NSString *)file{
    return [file pathExtension];
}

@end
