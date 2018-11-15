//
//  NSTimer+JZAdd.h
//  JZDevHelperDemo
//
//  Created by Zengyijie' Com  on 2018/11/15.
//  Copyright © 2018年 www.noname.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (JZAdd)

+ (NSTimer *)jz_ScheduledTimerWithTimeInterval:(NSTimeInterval)seconds block:(void (^)(NSTimer *timer))block repeats:(BOOL)repeats;

 + (NSTimer *)jz_TimerWithTimeInterval:(NSTimeInterval)seconds block:(void (^)(NSTimer *timer))block repeats:(BOOL)repeats;

@end
