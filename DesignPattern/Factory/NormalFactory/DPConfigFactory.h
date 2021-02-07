//
//  DPRuleConfigFactory.h
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#import <Foundation/Foundation.h>

#import "DPIConfigFacotry.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPJSONConfigFactory : NSObject<DPIConfigFacotry>


@end

@interface DPXMLConfigFactory : NSObject<DPIConfigFacotry>


@end


@interface DPYAMLConfigFactory : NSObject<DPIConfigFacotry>


@end


@interface DPPLISTConfigFactory : NSObject<DPIConfigFacotry>


@end


NS_ASSUME_NONNULL_END
