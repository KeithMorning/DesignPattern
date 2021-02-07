//
//  DPNormalFactory.h
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#import <Foundation/Foundation.h>
#import "DPIConfigFacotry.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPNormalFactory : NSObject

+ (id<DPIConfigFacotry>)createWithFileExtision:(NSString *)format;

@end

NS_ASSUME_NONNULL_END
