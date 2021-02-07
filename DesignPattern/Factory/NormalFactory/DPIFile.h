//
//  DPIFile.h
//  DesignPattern
//
//  Created by Keith on 2021/2/7.
//

#ifndef DPIFile_h
#define DPIFile_h

@protocol DPIFile <NSObject>
- (NSData *)read;
- (void)save;
@end


#endif /* DPIFile_h */
