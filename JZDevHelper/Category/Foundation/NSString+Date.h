//
//  NSString+Date.h
//  OnlineClass
//
//  Created by  曾一桀 on 17/6/1.
//  Copyright © 2017年  曾一桀. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Date)

/** NSData转换成字符串 */
+ (NSString *)timeWithDate:(NSDate *)date DateFormat:(NSString *)dateFormat;
/** 成字符串转换NSData */
+ (NSDate *)dateFromString:(NSString *)string DateFormat:(NSString *)dateFormat;

@end
