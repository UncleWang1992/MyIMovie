//
//  ShouYeViewController.m
//  Imovie
//
//  Created by Mac on 16/1/20.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ShouYeViewController.h"
#import "DefineUrl.h"
#import "ShouYeModel.h"
#import "ShouYeTableViewCell.h"
#import <AFNetworking/AFNetworking.h>
@interface ShouYeViewController ()

@end

@implementation ShouYeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    self.navigationController.navigationBarHidden = YES;

}
//重写父类的方法，隐藏button
- (void)createBackButton{}
- (void)loadNetData:(BOOL)isMore{
  [_manager GET:Scro_Url parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
  } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
      
  } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
      NSLog(@"%@",[error description]);
  }];
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
