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

- (intblock)setMax{
    DPBuiler *(^block)(NSInteger) = ^DPBuiler *(NSInteger value){
        self.maxValue = value;
        return self;
    };
    return block;
}

- (intblock)setMin{
    DPBuiler *(^block)(NSInteger) = ^DPBuiler *(NSInteger value){
        self.minValue = value;
        return self;
    };
    return block;
}


- (boolblock)setDebugMode{
    DPBuiler *(^block)(BOOL) = ^DPBuiler*(BOOL value){
        self.mode = value;
        return self;
    };
    return block;
}

- (stringBlock)setName{
    DPBuiler *(^block)(NSString *) = ^DPBuiler*(NSString* value){
        self.configname = value;
        return self;
    };
    return block;
}

- (voidblock)build{
    
    DPBuiler *(^block)(void) = ^DPBuiler*(void){
        if(self.configname.length < 2){
            NSAssert(NO, @"name is too short");
        }
        
        if(self.minValue > self.maxValue){
            NSAssert(NO, @"minvalue should not big than maxvalue");
        }
        
        if(self.mode){
            NSLog(@"debug mode is open");
        }
        return self;
    };
    return block;
   
}

@end
