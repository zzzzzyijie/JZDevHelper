//
//  NSArray+jzSafe.m
//  OnlineClass
//
//  Created by 曾一桀 on 2017/5/14.
//  Copyright © 2017年  曾一桀. All rights reserved.
//

#import "NSArray+jzSafe.h"

@implementation NSArray (jzSafe)

- (id)objectAt:(NSUInteger)index{
    if (index < self.count){
        return self[index];
    }else{
        return nil;
    }
}

- (id)objectAtIndexCheck:(NSUInteger)index{
    if (index >= [self count]) {
        return nil;
    }
    id value = [self objectAtIndex:index];
    if (value == [NSNull null]) {
        return nil;
    }
    return value;
}

@end
