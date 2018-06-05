//
//  JZSacleTool.m
//  JZAppDemo
//
//  Created by Zengyijie' Com  on 2017/7/28.
//  Copyright © 2017年 Zengyijie' Com . All rights reserved.
//

#import "JZSacleTool.h"

@implementation JZSacleTool

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


