//
//  NSString+Date.m
//  OnlineClass
//
//  Created by  曾一桀 on 17/6/1.
//  Copyright © 2017年  曾一桀. All rights reserved.
//

#import "NSString+Date.h"

@implementation NSString (Date)

/** NSData转换成字符串*/
+ (NSString *)timeWithDate:(NSDate *)date DateFormat:(NSString *)dateFormat{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormat];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
    [dateFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"]];
    NSString *str = [dateFormatter stringFromDate:date];
    return str ? str : @"";
}

/** 成字符串转换NSData */
+ (NSDate *)dateFromString:(NSString *)string DateFormat:(NSString *)dateFormat{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormat];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
    [dateFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"]];
    NSDate *date = [dateFormatter dateFromString:string];
    return date? date : [NSDate new];
}

@end
