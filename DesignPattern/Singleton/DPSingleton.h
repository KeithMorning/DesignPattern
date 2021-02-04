//
//  DPSingleton.h
//  DesignPattern
//
//  Created by KeithXi on 2021/2/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPSingleton : NSObject<NSCopying,NSMutableCopying>

/// 通过编译器处理
//+(instancetype) alloc __attribute__((unavailable("call defaultSigleton instead")));
//+(instancetype) new __attribute__((unavailable("call defaultSigleton instead")));
//-(instancetype) copy __attribute__((unavailable("call defaultSigleton instead")));
//-(instancetype) mutableCopy __attribute__((unavailable("call defaultSigleton instead")));

+ (instancetype)defaultSigleton;

- (void)whoIam;

@end

NS_ASSUME_NONNULL_END
