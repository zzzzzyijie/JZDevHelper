//
//  ColorFontMacro.h
//  JZAppDemo
//
//  Created by Zengyijie' Com  on 2017/7/14.
//  Copyright © 2017年 Zengyijie' Com . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorFontMacro : NSObject

// 随机颜色
#define JZRandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]
#define JZRGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define JZRGBAColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(r)/255.0 blue:(r)/255.0 alpha:a]
// clear背景颜色
#define JZClearColor [UIColor clearColor]
/** 主颜色 */
#define AppGlobalColor                          JZRGBColor(73,154,234)
#define AppGlobalGrey                           JZRGBColor(161,161,161)
#define AppBGColor                              JZRGBColor(244,244,244)

// ---
#define JZWHITE [UIColor whiteColor]
#define JZBlack [UIColor blackColor]
#define JZGRAY [UIColor grayColor]
#define COLOR_BG                                [UIColor jz_colorWithHexString:@"#eeeeee"]
#define COLOR_666                               [UIColor jz_colorWithHexString:@"#666666"]
#define COLOR_333                               [UIColor jz_colorWithHexString:@"#333333"]
#define COLOR_LINE                              [UIColor jz_colorWithHexString:@"#d1d1d1"]


// 字体大小
#define FONT_10 [JZFontTool fontWithSize:10]
#define FONT_11 [JZFontTool fontWithSize:11]
#define FONT_12 [JZFontTool fontWithSize:12]
#define FONT_13 [JZFontTool fontWithSize:13]
#define FONT_14 [JZFontTool fontWithSize:14]
#define FONT_15 [JZFontTool fontWithSize:15]
#define FONT_16 [JZFontTool fontWithSize:16]
#define FONT_17 [JZFontTool fontWithSize:17]
#define FONT_18 [JZFontTool fontWithSize:18]

// ########## 图片 #########//
#define OCPlaceHolderImage [UIImage imageNamed:@"12"]

@end
