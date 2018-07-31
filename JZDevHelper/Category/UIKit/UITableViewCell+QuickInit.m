//
//  UITableViewCell+QuickInit.m
//  OnlineClass
//
//  Created by 曾一桀 on 2017/5/9.
//  Copyright © 2017年  曾一桀. All rights reserved.
//

#import "UITableViewCell+QuickInit.h"

@implementation UITableViewCell (QuickInit)

+ (instancetype)jz_cellWithTableView:(UITableView *)tableView{
    NSString *ID = [NSString stringWithFormat:@"%@",NSStringFromClass([self class])];
    Class clz = [self class];
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:ID];
    //YJLog(@"cell的类型-%@",NSStringFromClass([cell class]));
    if (!cell) {
        cell = [[clz alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

+ (instancetype)jz_xibCellWithTabelView:(UITableView *)tableView{
    NSString *ID = [NSString stringWithFormat:@"%@",NSStringFromClass([self class])];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] firstObject];
    }
    return cell;
}

@end


