//
//  UIView+Extension.m
//  ItemExtend
//
//  Created by 悦生活 on 2017/7/6.
//  Copyright © 2017年 ICE. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (UIViewController *)getViewController{
    //通过响应者链，获得view所在的视图控制器
    UIResponder *next = self.nextResponder;
    do {
        //判断响应者对象是否是视图控制器类型
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = next.nextResponder;
    }while(next != nil);
    
    return nil;
}

- (UIImage *)captureImageFromView
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0.0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [self.layer renderInContext:ctx];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
