/*******************************************************************************\
** JZDevHelperDemo:NSObject+JZAdd.h
** Created by Zengyijie(jackiezeng01@163.com) on 2018/11/22
**
**Copyright © 2018 www.noname.com. All rights reserved.
\*******************************************************************************/


#import <Foundation/Foundation.h>

@interface NSObject (JZAdd)
/**
 *  是否为空
 *  支持对 （nil、NSNull、NSString、NSDictionary、NSArray）的判断
 */
- (BOOL)jz_isEmpty;
@end
