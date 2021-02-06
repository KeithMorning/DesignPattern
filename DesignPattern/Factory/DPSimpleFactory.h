//
//  SimpleFactory.h
//  DesignPattern
//
//  Created by Keith on 2021/2/6.
//

#import <Foundation/Foundation.h>
#import "DPIRuleConfigParser.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPSimpleFactory : NSObject

+ (id<DPIRuleConfigParser>)createParserWithFormt:(NSString *)format;

@end

NS_ASSUME_NONNULL_END
