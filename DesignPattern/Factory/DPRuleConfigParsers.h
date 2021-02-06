//
//  DPRuleConfigParsers.h
//  DesignPattern
//
//  Created by Keith on 2021/2/6.
//

#import <Foundation/Foundation.h>
#import "DPIRuleConfigParser.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPJSONRuleConfigParsers : NSObject<DPIRuleConfigParser>

@end

@interface DPXMLRuleConfigParsers : NSObject<DPIRuleConfigParser>

@end

@interface DPYAMLRuleConfigParsers : NSObject<DPIRuleConfigParser>

@end

@interface DPPlistRuleConfigParsers : NSObject<DPIRuleConfigParser>

@end


NS_ASSUME_NONNULL_END
