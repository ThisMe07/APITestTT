//
//  UIImage+Extension.m
//  YueWang
//
//  Created by 悦生活 on 17/1/16.
//  Copyright © 2017年 胥著祥. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *)imageFromColor:(UIColor *)color
{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(1, 1), false, 1);
    [color setFill];
    UIRectFill(CGRectMake(0, 0, 1, 1));
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
