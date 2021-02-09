//
//  DPBuiler.h
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DPBuiler;

typedef DPBuiler *(^intblock)(NSInteger value);
typedef DPBuiler *(^boolblock)(BOOL value);
typedef DPBuiler *(^stringBlock)(NSString *value);
typedef DPBuiler *(^voidblock)(void);

@interface DPBuiler : NSObject

@property (nonatomic,assign,readonly) NSInteger maxValue;

@property (nonatomic,assign,readonly) NSInteger minValue;

@property (nonatomic,assign,readonly) BOOL mode;

@property (nonatomic,assign,readonly) NSString *configname;

- (intblock)setMax;
- (intblock)setMin;
- (boolblock)setDebugMode;
- (stringBlock)setName;

- (voidblock)build;

@end

NS_ASSUME_NONNULL_END
