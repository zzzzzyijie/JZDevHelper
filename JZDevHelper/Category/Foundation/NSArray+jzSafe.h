//
//  NSArray+jzSafe.h
//  OnlineClass
//
//  Created by 曾一桀 on 2017/5/14.
//  Copyright © 2017年  曾一桀. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (jzSafe)

- (id)objectAt:(NSUInteger)index;
- (id)objectAtIndexCheck:(NSUInteger)index;

@end
