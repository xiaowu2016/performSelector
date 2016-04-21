//
//  ViewController.m
//  12321321
//
//  Created by zhangchao on 16/4/21.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加一个导航控制器
    UINavigationController *NC = [[UINavigationController alloc] initWithRootViewController:self];
    ((AppDelegate *)[UIApplication sharedApplication].delegate).window.rootViewController = NC;
    self.view.backgroundColor = [UIColor redColor];
}

//在触摸屏幕的时候跳到另一页面
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    FirstViewController *firstV = [[FirstViewController alloc] init];
    [self.navigationController pushViewController:firstV animated:YES];
}

- (void)changeBackgroundColor
{
    self.view.backgroundColor = [UIColor yellowColor];
}

@end
