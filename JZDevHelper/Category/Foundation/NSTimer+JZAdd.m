//
//  NSTimer+JZAdd.m
//  JZDevHelperDemo
//
//  Created by Zengyijie' Com  on 2018/11/15.
//  Copyright © 2018年 www.noname.com. All rights reserved.
//
// ---->>>>>>>>
//  form this
//  NSTimer+HZExtend.m
//  HZFoundation <https://github.com/GeniusBrother/HZFoundation>

#import "NSTimer+JZAdd.h"

@implementation NSTimer (JZAdd)

+ (void)fire:(NSTimer *)timer{
    if ([timer userInfo]) {
        void (^block)(NSTimer *timer) = (void (^)(NSTimer *timer))[timer userInfo];
        block(timer);
    }
}

+ (NSTimer *)jz_ScheduledTimerWithTimeInterval:(NSTimeInterval)seconds block:(void (^)(NSTimer *timer))block repeats:(BOOL)repeats{
    return [NSTimer scheduledTimerWithTimeInterval:seconds target:self selector:@selector(fire:) userInfo:[block copy] repeats:repeats];
}

+ (NSTimer *)jz_TimerWithTimeInterval:(NSTimeInterval)seconds block:(void (^)(NSTimer *timer))block repeats:(BOOL)repeats{
    return [NSTimer timerWithTimeInterval:seconds target:self selector:@selector(fire:) userInfo:[block copy] repeats:repeats];
}

@end
