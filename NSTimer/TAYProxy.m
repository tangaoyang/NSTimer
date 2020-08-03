//
//  TAYProxy.m
//  NSTimer
//
//  Created by cinderella on 2020/8/3.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "TAYProxy.h"

@implementation TAYProxy

+ (instancetype) proxyWithTarget:(id)target {
    TAYProxy *proxy = [[TAYProxy alloc] init];
    proxy.target = target;
    return proxy;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return self.target;
}

@end
