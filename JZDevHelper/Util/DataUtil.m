//
//  DataUtil.m
//  OnlineClass
//
//  Created by 曾一桀 on 2017/5/14.
//  Copyright © 2017年  曾一桀. All rights reserved.
//

#import "DataUtil.h"

@implementation DataUtil

//////////////////////////////////////////////
+ (void)setString:(NSString *)str forKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setValue:str forKey:key];
    [defaults synchronize];
}

+ (void)clearValueForKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults removeObjectForKey:key];
    [defaults synchronize];
}

+ (NSString *)stringForKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults valueForKey:key];
}

+ (void)setFloat:(CGFloat)v forKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setFloat:v forKey:key];
    [defaults synchronize];
}

+ (CGFloat)floatForKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults floatForKey:key];
}

+ (void)setInt:(int)v forKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:v forKey:key];
    [defaults synchronize];
}

+ (NSInteger)intForKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults integerForKey:key];
}

+ (void)setBool:(BOOL)v forKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:v forKey:key];
    [defaults synchronize];
}

+ (BOOL)boolForKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults boolForKey:key];
}
//////////////////////////////////////////////
+ (BOOL)isBlankString:(id)string{
    if ([self isBlankObject:string]) {
        return YES;
    }
    if ([string isKindOfClass:[NSNumber class]]) {
        return NO;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}

+ (BOOL)isBlankObject:(id)object{
    if (object == nil || object == NULL) {
        return YES;
    }
    if ([object isKindOfClass:[NSNull class]]) {
        return YES;
    }
    return NO;
}

+ (BOOL)isEmptyDict:(NSDictionary *)dict{
    if ([self isBlankObject:dict]) {
        return YES;
    }
//    if (![dict isKindOfClass:[NSDictionary class]]) {
//        return YES;
//    }
    if (dict.count <= 0) {
        return YES;
    }
    return NO;
}

+ (BOOL)isEmptyArray:(NSArray *)array{
    if ([self isBlankObject:array]) {
        return YES;
    }
//    if (![array isKindOfClass:[NSArray class]]) {
//        return YES;
//    }
    if (array.count <= 0) {
        return YES;
    }
    return NO;
}

+ (NSArray *)oc_arrayFromJSON:(NSString *)jsonStr{
    if (jsonStr) {
        id tmp = [NSJSONSerialization JSONObjectWithData:[jsonStr dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments | NSJSONReadingMutableLeaves | NSJSONReadingMutableContainers error:nil];
        if (tmp) {
            if ([tmp isKindOfClass:[NSArray class]]) {
                return tmp;
            } else if([tmp isKindOfClass:[NSString class]]
                      || [tmp isKindOfClass:[NSDictionary class]]) {
                return [NSArray arrayWithObject:tmp];
            } else {
                return nil;
            }
        } else {
            return nil;
        }
    } else {
        return nil;
    }
}

// sting From Html
+ (NSMutableAttributedString *)stringFromHtmlString:(NSString *)html{
    return [self stringFromHtmlString:html textColor:nil];
}

+ (NSMutableAttributedString *)stringFromHtmlString:(NSString *)html textColor:(UIColor *)color{
    
    NSDictionary *optionDict = @{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
                                 NSCharacterEncodingDocumentAttribute: @(NSUTF8StringEncoding),
                                 };
    
    NSAttributedString *str = [[NSAttributedString alloc] initWithData:[html dataUsingEncoding:NSUTF8StringEncoding]
                                                               options:optionDict
                                                    documentAttributes:nil error:nil];
    
    NSMutableAttributedString *mStr = [[NSMutableAttributedString alloc] initWithAttributedString:str];
    [mStr addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(0, mStr.length)];
    [mStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:15] range:NSMakeRange(0, mStr.length)];
    
    return mStr;
}


@end



