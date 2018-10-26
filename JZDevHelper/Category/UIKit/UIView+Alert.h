//
//  UIView+Alert.h
//  JZDevHelperDemo
//
//  Created by Zengyijie' Com  on 2018/10/26.
//  Copyright © 2018年 www.noname.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Alert)

- (void)jz_showAlertWithTitle:(NSString *)title message:(NSString *)message confirmHandler:(void(^)(UIAlertAction *confirmAction))handler;

- (void)jz_showAlertWithTitle:(NSString *)title message:(NSString *)message confirmTitle:(NSString *)confirmTitle confirmHandler:(void(^)(UIAlertAction *confirmAction))handler;

- (void)jz_showAlertWithTitle:(NSString *)title message:(NSString *)message cancelAction:(UIAlertAction *)cancelAction confirmAction:(UIAlertAction *)confirmAction;

@end
