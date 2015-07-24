//
//  ViewController.m
//  Demo
//
//  Created by 峰哥哥-.- on 15/7/24.
//  Copyright (c) 2015年 峰哥哥. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "FGGAnimation.h"

#define kWidth  [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor yellowColor];
    //弄一个跳转按钮
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(kWidth/2-60, kHeight/2-30, 120, 60)];
    [btn setTitle:@"跳转下一界面" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor orangeColor];
    btn.layer.cornerRadius=30;
    [btn addTarget:self action:@selector(jumpToNextPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
//跳转下一界面
-(void)jumpToNextPage
{
    DetailViewController *dvc=[[DetailViewController alloc] init];
//    设置转场动画
//    ------------------------------------------------------------
    [FGGAnimation addAnimationOnView:self.view animation:FGGAnimationTypeCameral direction:FGGAnimationDirectionLeft duration:0.5];
//    ------------------------------------------------------------
//    导航推出
    [self.navigationController pushViewController:dvc animated:YES];
}
@end
