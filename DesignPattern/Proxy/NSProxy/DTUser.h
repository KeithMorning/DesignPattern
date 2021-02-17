//
//  DTUser.h
//  DesignPattern
//
//  Created by Keith on 2021/2/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDTUser <NSObject>

- (void)login:(NSString *)name pwd:(NSString *)pwd complete:(void(^)(void))complete;

@end

@interface DTUser : NSObject<IDTUser>

@end

NS_ASSUME_NONNULL_END
