/*******************************************************************************\
** JZDevHelperDemo:NSObject+JZAdd.m
** Created by Zengyijie(jackiezeng01@163.com) on 2018/11/22
**
**Copyright © 2018 www.noname.com. All rights reserved.
\*******************************************************************************/


#import "NSObject+JZAdd.h"

@implementation NSObject (JZAdd)
- (BOOL)isEmpty{
    if (self == nil || self == NULL) {
        return YES;
    }
    if ([self isKindOfClass:[NSNull class]]){
        return YES;
    }
    if ([self isKindOfClass:[NSString class]]) {
        if ([[(NSString*)self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
            return YES;
        }
    }
    if ([self isKindOfClass:[NSDictionary class]]) {
        if ([(NSDictionary*)self count] <= 0) {
            return YES;
        }
    }
    
    if ([self isKindOfClass:[NSArray class]]) {
        if ([(NSArray*)self count] <= 0) {
            return YES;
        }
    }
    return NO;
}
@end
