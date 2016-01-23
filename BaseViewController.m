//
//  BaseViewController.m
//  Imovie
//
//  Created by Mac on 16/1/19.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "BaseViewController.h"
#import "UIView+Common.h"
#define Random arc4random()%255/256.0
@interface BaseViewController ()
{
    UIView *_navigationView;
}
@end

@implementation BaseViewController
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self customNavigationBar];
    self.view.backgroundColor = [UIColor colorWithRed:Random green:Random blue:Random alpha:1.0];
}
- (void)customNavigationBar{
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self.navigationController setNavigationBarHidden:YES];
    _navigationView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screenWidth(), 64)];
    _navigationView.backgroundColor = [UIColor colorWithRed:21/255.0 green:153/255.0 blue:255/255.0 alpha:1.0];
    [self.view addSubview:_navigationView];
    [self createBackButton];
    self.navigationController.navigationBar.alpha = 0;
}
- (void)createBackButton{
    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(0, 20, 44, 44);
    [button setImage:[UIImage imageNamed:@"iconfont-back"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickBackButton) forControlEvents:UIControlEventTouchUpInside];
    [_navigationView addSubview:button];
}
- (void)clickBackButton{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
