//
//  DPRuleConfigParsers.m
//  DesignPattern
//
//  Created by Keith on 2021/2/6.
//

#import "DPRuleConfigParsers.h"

@implementation DPJSONRuleConfigParsers

- (instancetype)initWithFileReader:(id<DPIFile>)filereader{
    if(self = [super init]){
       //todo
    }
    
    return self;
}

- (void)JSONFormat {
    NSLog(@"a json format config");
}

- (NSDictionary *)parse{
    return @{
        @"format":@"json"
    };
}

@end

@implementation DPXMLRuleConfigParsers

- (instancetype)initWithFileReader:(id<DPIFile>)filereader{
    if(self = [super init]){
       //todo
    }
    
    return self;
}

- (void)XMLFormat{
    NSLog(@"a xml format config");
}

- (NSDictionary *)parse{
    return @{
        @"format":@"xml"
    };
    
}

@end

@implementation DPYAMLRuleConfigParsers

- (instancetype)initWithFileReader:(id<DPIFile>)filereader{
    if(self = [super init]){
       //todo
    }
    
    return self;
}

- (void)YAMLFormat{
    NSLog(@"yaml format config");
}


- (NSDictionary *)parse{
    return @{
        @"format":@"yaml"
    };
    
}

@end

@implementation DPPlistRuleConfigParsers

- (instancetype)initWithFileReader:(id<DPIFile>)filereader{
    if(self = [super init]){
       //todo
    }
    
    return self;
}

- (void)PlistFormat{
    NSLog(@"a plist format");
}


- (NSDictionary *)parse{
    return @{
        @"format":@"plist"
    };
    
}

@end

