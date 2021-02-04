//
//  DPSingleton.m
//  DesignPattern
//
//  Created by KeithXi on 2021/2/4.
//

#import "DPSingleton.h"

@implementation DPSingleton

#pragma mark - 单例的实现
+ (instancetype)defaultSigleton{
    static dispatch_once_t onceToken;
    static DPSingleton *instance;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:nil] init];
    });
    
    return instance;
}

#pragma mark - OC 中单例避免被绕过去
+ (id)allocWithZone:(struct _NSZone *)zone{
    return [DPSingleton defaultSigleton];
}

- (id)copy{
    return [DPSingleton defaultSigleton];
}

- (id)copyWithZone:(NSZone *)zone{
    return [DPSingleton defaultSigleton];
}

- (id)mutableCopyWithZone:(NSZone *)zone{
    return [DPSingleton defaultSigleton];
}

#pragma mark - Run a Method
- (void)whoIam{
    NSLog(@"I am single ton");
}

@end
