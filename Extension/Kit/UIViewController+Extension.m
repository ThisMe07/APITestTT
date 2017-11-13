//
//  UIViewController+Extension.m
//  ItemDemo
//
//  Created by 悦生活 on 17/1/5.
//  Copyright © 2017年 ICE. All rights reserved.
//

#import "UIViewController+Extension.h"

@implementation UIViewController (Extension)

- (void)popController
{
    [self.navigationController popViewControllerAnimated:true];
}

- (void)popRootController
{
    [self.navigationController popToRootViewControllerAnimated:true];
}

- (void)pushController:(UIViewController *)vc
{
    [self.navigationController pushController:vc];
}

@end
