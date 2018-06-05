//
//  NSObject+jzswizzle.h
//  JZAppDemo
//
//  Created by Zengyijie' Com  on 2017/8/25.
//  Copyright © 2017年 Zengyijie' Com . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (jzswizzle)

+ (void)jz_swizzleSEL:(SEL)originalSEL withSEL:(SEL)swizzleSEL forClass:(Class )clz;

@end
