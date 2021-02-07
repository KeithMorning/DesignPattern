//
//  DPBuilderConfig.h
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#import <Foundation/Foundation.h>
#import "DPBuiler.h"

NS_ASSUME_NONNULL_BEGIN

typedef DPBuiler *(^builder)(DPBuiler *);

@interface DPBuilderConfig : NSObject

@property (nonatomic,assign,readonly) NSInteger maxValue;

@property (nonatomic,assign,readonly) NSInteger minValue;

@property (nonatomic,assign,readonly) BOOL mode;

@property (nonatomic,assign,readonly) NSString *configname;

- (void)makeConfigBuilder:(builder)builder;

@end

NS_ASSUME_NONNULL_END
