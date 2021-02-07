//
//  DPBuiler.m
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#import "DPBuiler.h"

@interface DPBuiler()

@property (nonatomic,assign) NSInteger maxValue;

@property (nonatomic,assign) NSInteger minValue;

@property (nonatomic,assign) BOOL mode;

@property (nonatomic,assign) NSString *configname;


@end


@implementation DPBuiler

- (instancetype)setMax:(NSInteger)value{
    if(value <= 0){
        NSAssert(NO, @"faile to make max value");
        return self;
    }
    self.maxValue = value;
    return self;
}

- (instancetype)setMin:(NSInteger)value{
    self.minValue = value;
    return self;
}

- (instancetype)setDebugMode:(BOOL)debugMode{
    self.mode = debugMode;
    return self;
}

- (instancetype)setName:(NSString *)name{
    self.configname = name;
    return self;
}

- (void)build{
    if(self.configname.length < 2){
        NSAssert(NO, @"name is too short");
    }
    
    if(self.minValue > self.maxValue){
        NSAssert(NO, @"minvalue should not big than maxvalue");
    }
    
    if(self.mode){
        NSLog(@"debug mode is open");
    }
}

@end
