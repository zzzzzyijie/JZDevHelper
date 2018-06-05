//
//  UITableViewCell+QuickInit.h
//  OnlineClass
//
//  Created by 曾一桀 on 2017/5/9.
//  Copyright © 2017年  曾一桀. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (QuickInit)
// 通过纯代码方式创建
+ (instancetype)jz_cellWithTableView:(UITableView *)tableView;
// 通过xib方式创建
+ (instancetype)jz_xibCellWithTabelView:(UITableView *)tableView;
@end
