//
//  DPRuleConfigFactory.m
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#import "DPConfigFactory.h"
#import "DPRuleConfigParsers.h"
#import "DPFileManager.h"

@implementation DPJSONConfigFactory

- (id<DPIRuleConfigParser>)createNormalParser{
    id<DPIFile> fileManger = [DPFileReader new];
    DPJSONRuleConfigParsers *pares =[[DPJSONRuleConfigParsers alloc] initWithFileReader:fileManger];
    [pares JSONFormat];
    return pares;
}

@end

@implementation DPXMLConfigFactory

- (id<DPIRuleConfigParser>)createNormalParser{
    id<DPIFile> fileManger = [DPFileReader new];
    DPXMLRuleConfigParsers *pares =[[DPXMLRuleConfigParsers alloc] initWithFileReader:fileManger];
    [pares XMLFormat];
    return pares;
}

@end

@implementation DPYAMLConfigFactory

- (id<DPIRuleConfigParser>)createNormalParser{
    id<DPIFile> fileManger = [DPFileReader new];
    DPYAMLRuleConfigParsers *pares =[[DPYAMLRuleConfigParsers alloc] initWithFileReader:fileManger];
    [pares YAMLFormat];
    return pares;
}

@end

@implementation DPPLISTConfigFactory

- (id<DPIRuleConfigParser>)createNormalParser{
    id<DPIFile> fileManger = [DPFileReader new];
    DPPlistRuleConfigParsers *pares =[[DPPlistRuleConfigParsers alloc] initWithFileReader:fileManger];
    [pares PlistFormat];
    return pares;
}

@end

