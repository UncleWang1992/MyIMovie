//
//  DefineUrl.h
//  ISMovie
//
//  Created by qianfeng on 15/11/12.
//  Copyright © 2015年 yuming. All rights reserved.
//

#ifndef DefineUrl_h
#define DefineUrl_h

//滚动视图
#define Scro_Url @"http://apiv2.vmovier.com/api/index/getBanner"
//http://apiv2.vmovier.com/api/index/getBanner

//首页   http://apiv2.vmovier.com/api/post/getPostByTab?tab=latest&p=1
#define SY_Url @"http://apiv2.vmovier.com/api/post/getPostByTab?tab=%@&p=%ld"

//热门 http://apiv2.vmovier.com/api/post/getPostByTab?tab=hot&p=1
#define RM_Url @"http://apiv2.vmovier.com/api/post/getPostByTab?tab=%@&p=%ld"

//系列剧——发现  http://apiv2.vmovier.com/api/series/getList?p=1
#define XLJ_Url @"http://apiv2.vmovier.com/api/series/getList?p=1"

//幕后花絮 — 标题栏种类  http://apiv2.vmovier.com/api/backstage/getBackstageCate
#define lBiaoTiCateUrl @"http://apiv2.vmovier.com/api/backstage/getBackstageCate"
// ——标题栏的详情  http://apiv2.vmovier.com/api/backstage/getPostByCate?p=1&cateid=2
//cateid 为种类链接里边的id属性
#define MH_Url @"http://apiv2.vmovier.com/api/backstage/getPostByCate?p=%ld&cateid=%@"

//频道 //爱情 ——id为12   搞笑 8  创意 6  人生  5  剧情17  青春 29  励志 7  泰国57  混剪/配音 44
// 广告 13  动画16  特殊摄影11  动作 10  科幻23  明星 19  记录片24  MV 18   家庭 34  战争 46
// 悬疑 15   公益 33   公益片 43   实验片 45
//  http://apiv2.vmovier.com/api/post/getPostInCate?p=1&cateid=12
//  http://apiv2.vmovier.com/api/post/getPostInCate?p=1&cateid=12
//  http://apiv2.vmovier.com/api/post/getPostInCate?p=1&cateid=8
#define PD_Url @"http://apiv2.vmovier.com/api/post/getPostInCate?p=%ld&cateid=%@"

//搜索  http://apiv2.vmovier.com/api/search/getlist?p=1&kw=%E7%88%B1%E6%83%85
#define lSearchUrl @"http://apiv2.vmovier.com/api/search/getlist?p=%ld&kw=%@"

//视频详情 http://apiv2.vmovier.com/api/post/view?postid=47538
#define Detail_Url @"http://apiv2.vmovier.com/api/post/view?postid=%@"

//评论 http://apiv2.vmovier.com/api/post/getComments?p=1&postid=47538

#define Comment_Url @"http://apiv2.vmovier.com/api/post/getComments?p=%ld&postid=%@"





#endif /* DefineUrl_h */
