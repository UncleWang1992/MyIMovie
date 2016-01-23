//
//  HotViewController.m
//  Imovie
//
//  Created by Mac on 16/1/21.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "HotViewController.h"

@interface HotViewController ()

@end

@implementation HotViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.navigationController.navigationBarHidden = YES;
}
//重写父类的方法，隐藏button
- (void)createBackButton{}

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
