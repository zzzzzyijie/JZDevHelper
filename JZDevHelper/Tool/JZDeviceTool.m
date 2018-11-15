//
//  JZDeviceTool.m
//  JZDevHelperDemo
//
//  Created by noone on 2018/11/15.
//  noone
//

#import "JZDeviceTool.h"

@implementation JZDeviceTool

+ (double)currentiOSVersion{
    return [UIDevice currentDevice].systemVersion.doubleValue;
}

+ (NSString *)appBundleName{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"];
}

+ (NSString *)appBundleIdentifier{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
}

+ (NSString *)appVersion{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

+ (NSString *)appBuildVersion{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}

@end
