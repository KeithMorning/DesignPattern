//
//  DPIRuleConfigFacotry.h
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#ifndef DPIRuleConfigFacotry_h
#define DPIRuleConfigFacotry_h
#import "DPISYSConfigParser.h"
#import "DPIRuleConfigParser.h"

@protocol DPIConfigFacotry <NSObject>

- (id<DPIRuleConfigParser>)createNormalParser;

@optional
- (id<DPISYSConfigParser>)createSystemParser;


@end


#endif /* DPIRuleConfigFacotry_h */
