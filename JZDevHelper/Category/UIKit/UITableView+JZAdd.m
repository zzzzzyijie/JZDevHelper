/*******************************************************************************\
** JZAppDemo:UITableView+JZAdd.m
** Created by Zengyijie(jackiezeng01@163.com) on 2017/8/18
**
**  Copyright © 2017年 Zengyijie' Com . All rights reserved.
\*******************************************************************************/


#import "UITableView+JZAdd.h"

@implementation UITableView (JZAdd)

#pragma mark - Cell
- (void)jz_registerClass:(Class )className {
    [self registerClass:className forCellReuseIdentifier:NSStringFromClass(className)];
}

- (void)jz_registerNib:(Class)className{
    NSString *name = NSStringFromClass(className);
    [self registerNib:[UINib nibWithNibName:name bundle:nil] forCellReuseIdentifier:name];
}

#pragma mark - Header & Footer
- (void)jz_registerHeaderFooterNib:(Class )className {
    NSString *name = NSStringFromClass(className);
    [self registerNib:[UINib nibWithNibName:name bundle:nil] forHeaderFooterViewReuseIdentifier:name];
}

- (void)jz_registerHeaderFooterClass:(Class )className {
    [self registerClass:className forHeaderFooterViewReuseIdentifier:NSStringFromClass(className)];
}


- (void)configCorner:(CGFloat)radius
             padding:(CGFloat)padding
           fillColor:(UIColor *)fillColor
           tableView:(UITableView *)tableView
                cell:(UITableViewCell *)cell
   forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CGSize cornerRadius = CGSizeMake(radius, radius);
    cell.backgroundColor = UIColor.clearColor;
    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    CGRect bounds = CGRectInset(cell.bounds, padding, 0);
    
    UIBezierPath *path;
    if (indexPath.row == 0 && indexPath.row == [tableView numberOfRowsInSection:indexPath.section]-1) {
       path = [UIBezierPath bezierPathWithRoundedRect:bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:cornerRadius];
    } else if (indexPath.row == 0) {
        path = [UIBezierPath bezierPathWithRoundedRect:bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:cornerRadius];
    } else if (indexPath.row == [tableView numberOfRowsInSection:indexPath.section]-1) {
        path = [UIBezierPath bezierPathWithRoundedRect:bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:cornerRadius];
    }else {
        path = [UIBezierPath bezierPathWithRect:bounds];
    }
    layer.path = path.CGPath;
    layer.fillColor = fillColor.CGColor;
    UIView *testView = [[UIView alloc] initWithFrame:bounds];
    [testView.layer insertSublayer:layer atIndex:0];
    testView.backgroundColor = UIColor.whiteColor;
    cell.backgroundView = testView;
}

- (void)jz_clearsSelection{
    NSArray *selectedIndexPaths = [self indexPathsForSelectedRows];
    for (NSIndexPath *indexPath in selectedIndexPaths) {
        [self deselectRowAtIndexPath:indexPath animated:YES];
    }
}

@end
