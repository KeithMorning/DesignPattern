//
//  DPNormalFactory.m
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#import "DPNormalFactory.h"
#import "DPConfigFactory.h"

@implementation DPNormalFactory

//这是一个工厂的简单工厂
+ (id<DPIConfigFacotry>)createWithFileExtision:(NSString *)format{
    format = format.lowercaseString;
    if ([format isEqualToString:@"json"]){
        return [DPJSONConfigFactory new];
    }else if ([format isEqualToString:@"xml"]){
        return [DPXMLConfigFactory new];
    }else if([format isEqualToString:@"yaml"]){
        return [DPYAMLConfigFactory new];
    }else if([format isEqualToString:@"plist"]){
        return [DPPLISTConfigFactory new];
    }
    
    NSAssert(NO, @"not support for the format");
    return nil;

}

//或者采用Map的方式

@end
