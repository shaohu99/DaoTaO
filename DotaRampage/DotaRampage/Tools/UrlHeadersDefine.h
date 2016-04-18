//
//  UrlHeadersDefine.h
//  DotaRampage
//
//  Created by lanou3g on 16/4/16.
//  Copyright © 2016年 张少华. All rights reserved.
//

#ifndef UrlHeadersDefine_h
#define UrlHeadersDefine_h

//一 首页

//美服 接口
#define HOMEPAGE_US @"http://www.dota2.com/webapi/ILeaderboard/GetDivisionLeaderboard/v0001?division=americas"
//国服
#define HOMEPAGE_CH @"http://www.dota2.com/webapi/ILeaderboard/GetDivisionLeaderboard/v0001?division=china"
//欧服
#define HOMEPAGE_EU @"http://www.dota2.com/webapi/ILeaderboard/GetDivisionLeaderboard/v0001?division=europe"
//东南亚
#define HOMEPAGE_SA @"http://www.dota2.com/webapi/ILeaderboard/GetDivisionLeaderboard/v0001?division=se_asia"
//完美dota轮播图
#define SHUFFLING @"http://www.dota2.com.cn/wapnews/sliderImagesData_v2.html"
//比赛视频
#define GAME @"http://www.dota2.com.cn/app1/data/videoNewest.json"
//封面
#define COVER @"http://www.dota2.com.cn/wapnews/qrcode.json"
//全部主页
#define ALLHOMEPAGE @"http://www.dota2.com.cn/wapnews/hotnewsList.html"
//视频- 赛事
#define GAMEVIDEO @"http://www.dota2.com.cn/app1/data/sorts/3.json"
//视频- 解说
#define EXPLAIN @"http://www.dota2.com.cn/app1/data/sorts/4.json"
//视频- 集锦
#define HIGHLIGHTS @"http://www.dota2.com.cn/app1/data/sorts/2.json"
//视频- 最新
#define LATEST @"http://www.dota2.com.cn/app1/data/videoNewest.json"
//获取当前在线人数
#defineb CURRENTNUMBER @"http://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1?appid=570&key=5150B9DBEEFE515FC93F6419F77275BD"
//斗鱼伴娘
#define DOUYU @"http://hlsa.douyutv.com/live/101342rTvWjakU4V/playlist.m3u8?wsSecret=0e37dbacb82b85020562a6763fce5f12&wsTime=1460635553"
//获得所有英雄的接口
#define HEROLABEL @"http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v1?key=206FCC40803498C0E4C719D9C535EC86&language=english&itemizedonly=no"


#endif /* UrlHeadersDefine_h */
