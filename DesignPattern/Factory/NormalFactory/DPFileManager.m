//
//  DPFileReader.m
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#import "DPFileManager.h"

@implementation DPFileReader

- (NSData *)read{
    NSString *content = @"filecontent";
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    return data;
}

- (void)save{
    NSLog(@"file reader");
}

@end
