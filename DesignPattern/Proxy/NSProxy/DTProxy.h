//
//  DTUserProxy.h
//  DesignPattern
//
//  Created by Keith on 2021/2/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//使用NSProxy 快速实现一个代理类
@interface DTProxy : NSProxy

+ (instancetype)proxyWithObject:(NSObject *)object;

@end

NS_ASSUME_NONNULL_END
