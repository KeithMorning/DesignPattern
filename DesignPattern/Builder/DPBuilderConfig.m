//
//  DPBuilderConfig.m
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#import "DPBuilderConfig.h"

@interface DPBuilderConfig()

@property (nonatomic,assign) NSInteger maxValue;

@property (nonatomic,assign) NSInteger minValue;

@property (nonatomic,assign) BOOL mode;

@property (nonatomic,assign) NSString *configname;

@end

@implementation DPBuilderConfig

- (void)makeConfigBuilder:(builder)builder{
    DPBuiler *configbuilder = builder([DPBuiler new]);
    self.minValue = configbuilder.minValue;
    self.maxValue = configbuilder.maxValue;
    self.configname = configbuilder.configname;
    self.mode = configbuilder.mode;
}

@end
