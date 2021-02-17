//
//  DTUserProxy.m
//  DesignPattern
//
//  Created by Keith on 2021/2/16.
//

#import "DTProxy.h"


@interface DTProxy()

@property (nonatomic,strong) id object;//根据自己的使用场景决定使用weak 还是strong

@end

@implementation DTProxy

+ (instancetype)proxyWithObject:(NSObject *)object{
    DTProxy *proxy = [DTProxy alloc];
    proxy.object = object;
    return proxy;
}



- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel{
    return [_object methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation{
    if([_object respondsToSelector:invocation.selector]){
        printf("a method call before \n");
        [invocation invokeWithTarget:_object];
        printf("a method call end \n");
    }
}

@end
