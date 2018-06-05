/*******************************************************************************\
** JZAppDemo:UITableView+JZAdd.m
** Created by Zengyijie(jackiezeng01@163.com) on 2017/8/18
**
**  Copyright © 2017年 Zengyijie' Com . All rights reserved.
\*******************************************************************************/


#import "UITableView+JZAdd.h"

@implementation UITableView (JZAdd)

- (void)jz_clearsSelection{
    NSArray *selectedIndexPaths = [self indexPathsForSelectedRows];
    for (NSIndexPath *indexPath in selectedIndexPaths) {
        [self deselectRowAtIndexPath:indexPath animated:YES];
    }
}

@end
