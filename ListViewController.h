//
//  ListViewController.h
//  Imovie
//
//  Created by Mac on 16/1/20.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "BaseViewController.h"
@class AFHTTPSessionManager;
@interface ListViewController : BaseViewController
{
    NSMutableArray *_dataArray;
    UITableView *_tableView;
    AFHTTPSessionManager *_manager;
}
- (void)loadNetData:(BOOL)isMore;
- (void)createRefresh;

@end
