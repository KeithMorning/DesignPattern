//
//  DPRuleConfigSource.h
//  DesignPattern
//
//  Created by Keith on 2021/2/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPRuleConfigSource : NSObject

- (NSDictionary *)loadfile:(NSString *)filePath;

@end

NS_ASSUME_NONNULL_END
