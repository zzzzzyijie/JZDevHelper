/*******************************************************************************\
** JZAppDemo:UITableView+JZAdd.h
** Created by Zengyijie(jackiezeng01@163.com) on 2017/8/18
**
**  Copyright © 2017年 Zengyijie' Com . All rights reserved.
\*******************************************************************************/


#import <UIKit/UIKit.h>

@interface UITableView (JZAdd)

#pragma mark - Cell
/**
注册nib
*/
- (void)jz_registerNib:(Class)className;

/*
 *  className为Xcell class，同时也为reuseIdentifier
 */
- (void)jz_registerClass:(Class )className;


#pragma mark - Header & Footer
/*
 *  className为Xcell class，同时也为reuseIdentifier
 */
- (void)jz_registerHeaderFooterNib:(Class )className;

/*
 *  className为Xcell class，同时也为reuseIdentifier
 */
- (void)jz_registerHeaderFooterClass:(Class )className;

/*
 *  给给一个section设置圆角的显示
 *  在tableView的willDisplayCell调用
 */
- (void)configCorner:(CGFloat)radius
             padding:(CGFloat)padding
           fillColor:(UIColor *)fillColor
           tableView:(UITableView *)tableView
                cell:(UITableViewCell *)cell
   forRowAtIndexPath:(NSIndexPath *)indexPath;

// 取消选择状态
- (void)jz_clearsSelection;

@end
