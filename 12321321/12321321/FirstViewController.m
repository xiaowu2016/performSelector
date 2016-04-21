//
//  FirstViewController.m
//  12321321
//
//  Created by zhangchao on 16/4/21.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import "FirstViewController.h"

//去除警告
#define PerformSelectorLeakWarning(Stuff) \
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
Stuff; \
_Pragma("clang diagnostic pop") \
} while (0)

@implementation FirstViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 50);
    [button setTitle:@"变色" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(didClickBtn) forControlEvents:UIControlEventTouchUpInside];
}

//按钮的点击事件
- (void)didClickBtn
{
    SEL sel=NSSelectorFromString(@"changeBackgroundColor");
    PerformSelectorLeakWarning(
                               [[self.navigationController.childViewControllers firstObject]  performSelector:sel withObject:nil]);
    [self.navigationController popViewControllerAnimated:YES];
}
@end
