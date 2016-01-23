//
//  ListViewController.m
//  Imovie
//
//  Created by Mac on 16/1/20.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ListViewController.h"
#import <AFNetworking/AFNetworking.h>
#import <MJRefresh/MJRefresh.h>
@interface ListViewController () <UITableViewDataSource,UITableViewDelegate>
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _dataArray = [NSMutableArray new];
    
    [self iniAFHttpManager];
    [self createTableView];
}
- (void)iniAFHttpManager{
    if (_manager == nil) {
        _manager = [AFHTTPSessionManager manager];
        _manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    }
}
- (void)createTableView{
    if (_tableView == nil) {
        CGRect frame = self.view.bounds;
        frame.size.height -= 94.0;
        _tableView.dataSource = self;
        _tableView.delegate = self;
        [self.view addSubview:_tableView];
    }
    [self createRefresh];
}
#pragma mark -datasoure
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  _dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}
- (void)loadNetData:(BOOL)isMore{

}
- (void)createRefresh{
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [self loadNetData:NO];
    }];
    _tableView.mj_header = header;
    
    MJRefreshBackNormalFooter *footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        [self loadNetData:YES];
    }];
    _tableView.mj_footer = footer;
    [_tableView.mj_header beginRefreshing];

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
