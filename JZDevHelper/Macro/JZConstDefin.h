//
//  JZConstDefin.h
//  OnlineClass
//
//  Created by  曾一桀 on 17/5/5.
//  Copyright © 2017年  曾一桀. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


// Height Degin
// 高度相关
#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)

#define HEIGHT_OPTION                           44.0f
#define SIZE_PADDING                            15.0f
#define SIZE_PADDING_SMALL                      10.0f
#define ARROW_PADDING                           23.0f
#define HEIGHT_10                               10.0f
#define HEIGHT_15                               15.0f
#define HEIGHT_20                               20.0f
#define TABBAR_HEIGHT                           49.0f

// ## 第三方登录 ##
UIKIT_EXTERN NSString *const UM_APPKEY;
UIKIT_EXTERN NSString *const currentAppSchme;
UIKIT_EXTERN NSString *const JPush_APPKEY;
// ## 常用的常量
UIKIT_EXTERN NSString *const regKey;
UIKIT_EXTERN NSString *const retsetKey;
UIKIT_EXTERN NSString *const kUser;
UIKIT_EXTERN NSString *const kToken;
UIKIT_EXTERN NSString *const kTempToken;
UIKIT_EXTERN NSString *const kErrorMessage;
UIKIT_EXTERN NSString *const kIsLogin;
UIKIT_EXTERN NSString *const kIsCompany;
// ## 通知相关
UIKIT_EXTERN NSString *const kLoginSuccess;
UIKIT_EXTERN NSString *const kLoginOut;
UIKIT_EXTERN NSString *const kPaySuccess;
UIKIT_EXTERN NSString *const kPayFailue;
// ## 缓存Cache的Key
UIKIT_EXTERN NSString *const kAllClass;
UIKIT_EXTERN NSString *const kAdResult;

