//
//  UILabel+JZAdd.m
//  JZAppDemo
//
//  Created by Zengyijie' Com  on 2017/8/25.
//  Copyright © 2017年 Zengyijie' Com . All rights reserved.
//

#import "UILabel+JZAdd.h"

@implementation UILabel (JZAdd)

+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // Class class = NSClassFromString(@"UILabel");
        // 这个需要谨慎调用 因为是全局Label
        //[self jz_swizzleSEL:@selector(setText:) with3SEL:@selector(jz_setText:) forClass:class];
    });
}

- (void)jz_setText:(NSString *)text{
    //NSLog(@"jz_setText");
    if (!text) {
        //NSLog(@"Label text is nill");
        return;
    }
    [self jz_setText:text];
}

@end
