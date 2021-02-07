//
//  DPBuiler.h
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPBuiler : NSObject

@property (nonatomic,assign,readonly) NSInteger maxValue;

@property (nonatomic,assign,readonly) NSInteger minValue;

@property (nonatomic,assign,readonly) BOOL mode;

@property (nonatomic,assign,readonly) NSString *configname;

- (instancetype)setMax:(NSInteger)value;
- (instancetype)setMin:(NSInteger)value;
- (instancetype)setDebugMode:(BOOL)debugMode;
- (instancetype)setName:(NSString *)name;

- (void)build;

@end

NS_ASSUME_NONNULL_END
