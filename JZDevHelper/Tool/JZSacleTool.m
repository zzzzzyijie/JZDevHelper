//
//  JZSacleTool.m
//  JZAppDemo
//
//  Created by Zengyijie' Com  on 2017/7/28.
//  Copyright © 2017年 Zengyijie' Com . All rights reserved.
//

#import "JZSacleTool.h"

@implementation JZSacleTool

// floor  如果参数是小数  则求最大的整数但不大于本身.
// round  如果参数是小数  则求本身的四舍五入.
// ceil   如果参数是小数  则求最小的整数但不小于本身.

+ (CGFloat)getScreenScale{
    return [UIScreen mainScreen].scale;
}

+ (CGSize)getCGSizePixelFloor:(CGSize)size{
    CGFloat scale = [self getScreenScale];
    return CGSizeMake(floor(size.width * scale) / scale,
                      floor(size.height * scale) / scale);
}

+ (CGSize)getCGSizePixelRound:(CGSize)size{
    CGFloat scale = [self getScreenScale];
    return CGSizeMake(round(size.width * scale) / scale,
                      round(size.height * scale) / scale);
}

+ (CGSize)getCGSizePixelCeil:(CGSize)size{
    CGFloat scale = [self getScreenScale];
    return CGSizeMake(ceil(size.width * scale) / scale,
                      ceil(size.height * scale) / scale);
}

+ (CGSize)getCGSizePixelHalf:(CGSize)size{
    CGFloat scale = [self getScreenScale];
    return CGSizeMake((floor(size.width * scale) + 0.5) / scale,
                      (floor(size.height * scale) + 0.5) / scale);
}

@end


