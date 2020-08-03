//
//  NSTimer+BlocksSupport.h
//  NSTimer
//
//  Created by cinderella on 2020/8/3.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (BlocksSupport)
+ (NSTimer *)xx_scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                       repeats:(BOOL)repeats
                                         block:(void(^)())block;

@end

NS_ASSUME_NONNULL_END
