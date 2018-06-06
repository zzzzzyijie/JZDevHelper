//
//  GernalMacro.h
//  JZAppDemo
//
//  Created by Zengyijie' Com  on 2017/7/14.
//  Copyright © 2017年 Zengyijie' Com . All rights reserved.
//

#import <Foundation/Foundation.h>

// 打印Log
#ifdef DEBUG
#define YJLog( s, ... ) printf("class: <%p %s:(%d) > method: %s \n%s\n", self, [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, __PRETTY_FUNCTION__, [[NSString stringWithFormat:(s), ##__VA_ARGS__] UTF8String] )
#else
#define YJLog( s, ... )
#endif

// 系统版本
#define kiOS7Later SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")
#define kiOS8Later SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0")
#define kiOS9Later SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"9.0")
#define kiOS10Later SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"10.0")
#define kiOS11Later SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"11.0")
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

// 屏幕尺寸
#define iPhone5SE [[UIScreen mainScreen] bounds].size.width == 320.0f && [[UIScreen mainScreen] bounds].size.height == 568.0f
#define iPhone6_6s [[UIScreen mainScreen] bounds].size.width == 375.0f && [[UIScreen mainScreen] bounds].size.height == 667.0f
#define iPhone6Plus_6sPlus [[UIScreen mainScreen] bounds].size.width == 414.0f && [[UIScreen mainScreen] bounds].size.height == 736.0f

// GCD
// GCD - 一次性执行
#define kDISPATCH_ONCE_BLOCK(onceBlock) static dispatch_once_t onceToken; dispatch_once(&onceToken, onceBlock);
// GCD - 在Main线程上运行
#define kDISPATCH_MAIN_THREAD(mainQueueBlock) dispatch_async(dispatch_get_main_queue(), mainQueueBlock);
// GCD - 开启异步线程
#define kDISPATCH_GLOBAL_QUEUE_DEFAULT(globalQueueBlock) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), globalQueueBlocl);

// 通知中心
#define JZNotificationCenter [NSNotificationCenter defaultCenter]

// 文件夹路径 （沙盒）
// 获取temp
#define kPathTemp NSTemporaryDirectory()
// 获取沙盒 Document
#define kPathDocument [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
// 获取沙盒 Cache
#define kPathCache [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]

// 弱引用
#define JZWeakSelf __weak typeof(self) weakSelf = self
#define JZStrongSelf(type)  __strong typeof(type) type = weak##type;

/** 主窗口 */
#define JZKeyWindow [[UIApplication sharedApplication] keyWindow]

// 忽略警告
#define ArgumentToString(macro) #macro
#define ClangWarningConcat(warning_name) ArgumentToString(clang diagnostic ignored warning_name)
#define BeginIgnoreClangWarning(warningName) _Pragma("clang diagnostic push") _Pragma(ClangWarningConcat(#warningName))
#define EndIgnoreClangWarning _Pragma("clang diagnostic pop")


