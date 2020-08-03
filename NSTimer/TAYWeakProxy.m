//
//  TAYWeakProxy.m
//  NSTimer
//
//  Created by cinderella on 2020/8/3.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "TAYWeakProxy.h"

@implementation TAYWeakProxy

+ (instancetype)proxyWithTarget:(id)target {
    TAYWeakProxy *proxy = [TAYWeakProxy alloc];
    proxy.target = target;
    return proxy;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    return [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    [invocation invokeWithTarget:self.target];
}

@end
