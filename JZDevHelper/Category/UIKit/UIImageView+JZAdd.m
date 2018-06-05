/*******************************************************************************\
** JZAppDemo:UIImageView+JZAdd.m
** Created by CZ(cz.devnet@gmail.com) on 2017/8/18
**
**  Copyright © 2017年 Zengyijie' Com . All rights reserved.
\*******************************************************************************/


#import "UIImageView+JZAdd.h"
#import "CGRectHelp.h"

@implementation UIImageView (JZAdd)

- (void)jz_sizeToFit:(CGSize)limitSize{
    if (!self.image) {
        return;
    }
    CGSize currentSize = self.frame.size;
    if (currentSize.width <= 0) {
        currentSize.width = self.image.size.width;
    }
    if (currentSize.height <= 0) {
        currentSize.height = self.image.size.height;
    }
    CGFloat horizontalRatio = limitSize.width / currentSize.width;
    CGFloat verticalRatio = limitSize.height / currentSize.height;
    CGFloat ratio = fminf(horizontalRatio, verticalRatio);
    CGRect frame = self.frame;
    frame.size.width = flat(currentSize.width * ratio);
    frame.size.height = flat(currentSize.height * ratio);
    self.frame = frame;
}

@end
