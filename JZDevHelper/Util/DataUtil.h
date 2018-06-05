//
//  DataUtil.h
//  OnlineClass
//
//  Created by 曾一桀 on 2017/5/14.
//  Copyright © 2017年  曾一桀. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DataUtil : NSObject
// save
+(void)setString:(NSString *)str forKey:(NSString *)key;
+(void)setFloat:(CGFloat)v forKey:(NSString *)key;
+(void)setInt:(int)v forKey:(NSString *)key;
+(void)setBool:(BOOL)v forKey:(NSString *)key;
// get
+(BOOL)boolForKey:(NSString *)key;
+(CGFloat)floatForKey:(NSString *)key;
+(NSInteger)intForKey:(NSString *)key;
+(NSString *)stringForKey:(NSString *)key;
// clear
+(void)clearValueForKey:(NSString *)key;
// empty check
+(BOOL)isBlankString:(id)string;
+(BOOL)isBlankObject:(id)object;
+(BOOL)isEmptyDict:(NSDictionary *)dict;
+(BOOL)isEmptyArray:(NSArray *)array;
// 【字符串数组】转【数组】
+ (NSArray *)oc_arrayFromJSON:(NSString *)jsonStr;

// sting From Html
+ (NSMutableAttributedString *)stringFromHtmlString:(NSString *)html;
+ (NSMutableAttributedString *)stringFromHtmlString:(NSString *)html textColor:(UIColor *)color;

@end
