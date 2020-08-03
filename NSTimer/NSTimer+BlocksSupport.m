//
//  NSTimer+BlocksSupport.m
//  NSTimer
//
//  Created by cinderella on 2020/8/3.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "NSTimer+BlocksSupport.h"

@implementation NSTimer (BlocksSupport)

+ (NSTimer *)xx_scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                       repeats:(BOOL)repeats
                                         block:(void(^)())block;
{
    return [self scheduledTimerWithTimeInterval:interval
                                         target:self
                                       selector:@selector(xx_blockInvoke:)
                                       userInfo:[block copy]
                                        repeats:repeats];
}
+ (void)xx_blockInvoke:(NSTimer *)timer {
    void (^block)() = timer.userInfo;
    if(block) {
        block();
    }
}

@end
