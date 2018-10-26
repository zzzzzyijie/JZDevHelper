//
//  UIView+Alert.m
//  JZDevHelperDemo
//
//  Created by Zengyijie' Com  on 2018/10/26.
//  Copyright © 2018年 www.noname.com. All rights reserved.
//

#import "UIView+Alert.h"

@implementation UIView (Alert)

- (void)jz_showAlertWithTitle:(NSString *)title message:(NSString *)message confirmHandler:(void(^)(UIAlertAction *confirmAction))handler {
    [self jz_showAlertWithTitle:title message:message confirmTitle:@"确定" confirmHandler:handler];
}

- (void)jz_showAlertWithTitle:(NSString *)title message:(NSString *)message confirmTitle:(NSString *)confirmTitle confirmHandler:(void(^)(UIAlertAction *confirmAction))handler {
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *confirmlAction = [UIAlertAction actionWithTitle:confirmTitle style:UIAlertActionStyleDefault handler:handler];
    [self jz_showAlertWithTitle:title message:message cancelAction:cancelAction confirmAction:confirmlAction];
}

- (void)jz_showAlertWithTitle:(NSString *)title message:(NSString *)message cancelAction:(UIAlertAction *)cancelAction confirmAction:(UIAlertAction *)confirmAction {
    
    if (cancelAction == nil && confirmAction == nil) return;
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    cancelAction != nil ? [alertController addAction:cancelAction] : nil;
    confirmAction != nil ? [alertController addAction:confirmAction] : nil;
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:YES completion:nil];
}


@end
