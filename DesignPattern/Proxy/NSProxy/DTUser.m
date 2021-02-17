//
//  DTUser.m
//  DesignPattern
//
//  Created by Keith on 2021/2/16.
//

#import "DTUser.h"

@implementation DTUser

- (void)login:(NSString *)name pwd:(NSString *)pwd complete:(void (^)(void))complete{
    printf("user try to login \n");
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        complete();
    });
}

@end
