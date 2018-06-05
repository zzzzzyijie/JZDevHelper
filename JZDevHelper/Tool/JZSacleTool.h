//
//  JZSacleTool.h
//  JZAppDemo
//
//  Created by Zengyijie' Com  on 2017/7/28.
//  Copyright © 2017年 Zengyijie' Com . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JZSacleTool : NSObject

+ (CGFloat)getScreenScale;

+ (CGSize)getCGSizePixelFloor:(CGSize)size;

+ (CGSize)getCGSizePixelRound:(CGSize)size;

+ (CGSize)getCGSizePixelCeil:(CGSize)size;

+ (CGSize)getCGSizePixelHalf:(CGSize)size;

@end
