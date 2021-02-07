//
//  DPIRuleConfigParser.h
//  DesignPattern
//
//  Created by Keith on 2021/2/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DPIRuleConfigParser <NSObject>

- (NSDictionary *)parse;

@end


NS_ASSUME_NONNULL_END
