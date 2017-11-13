//
//  UIViewController+Extension.h
//  ItemDemo
//
//  Created by 悦生活 on 17/1/5.
//  Copyright © 2017年 ICE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Extension)

- (void)popController;
- (void)popRootController;
- (void)pushController:(UIViewController *)vc;

@end
