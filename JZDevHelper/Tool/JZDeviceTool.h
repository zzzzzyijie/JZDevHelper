//
//  JZDeviceTool.h
//  JZDevHelperDemo
//
//  Created by noone on 2018/11/15.
//  noone
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JZDeviceTool : NSObject

/**
 *  系统版本
 */
+ (double)currentiOSVersion;

/**
 *  App名称
 */
+ (NSString *)appBundleName;

/**
 *  App BundleId
 */
+ (NSString *)appBundleIdentifier;

/**
 *  App 版本
 */
+ (NSString *)appVersion;

/**
 *  App Build 版本
 */
+ (NSString *)appBuildVersion;

@end
