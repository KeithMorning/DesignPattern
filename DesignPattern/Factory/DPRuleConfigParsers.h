//
//  DPRuleConfigParsers.h
//  DesignPattern
//
//  Created by Keith on 2021/2/6.
//

#import <Foundation/Foundation.h>
#import "DPIRuleConfigParser.h"
#import "DPIFile.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPJSONRuleConfigParsers : NSObject<DPIRuleConfigParser>

//只是一个例子有比较复杂创建时使用工厂模式
- (instancetype)initWithFileReader:(id<DPIFile>)filereader;

- (void)JSONFormat;

@end

@interface DPXMLRuleConfigParsers : NSObject<DPIRuleConfigParser>

- (instancetype)initWithFileReader:(id<DPIFile>)filereader;

- (void)XMLFormat;

@end

@interface DPYAMLRuleConfigParsers : NSObject<DPIRuleConfigParser>

- (instancetype)initWithFileReader:(id<DPIFile>)filereader;

- (void)YAMLFormat;

@end

@interface DPPlistRuleConfigParsers : NSObject<DPIRuleConfigParser>

- (instancetype)initWithFileReader:(id<DPIFile>)filereader;

- (void)PlistFormat;

@end


NS_ASSUME_NONNULL_END
