//
//  RecentGameModel.h
//  DotaRampage
//
//  Created by xx on 16/4/18.
//  Copyright © 2016年 张少华. All rights reserved.
//

#import "baseModel.h"

@interface RecentGameModel : baseModel
@property (nonatomic,strong)NSString *_id;
@property (nonatomic,strong)NSString *bigThumbnail;
@property (nonatomic,strong)NSString *cid;
@property (nonatomic,strong)NSString *created;
@property (nonatomic,strong)NSString *duration;
@property (nonatomic,strong)NSString *link;
@property (nonatomic,strong)NSString *thumbnail;
@property (nonatomic,strong)NSString *title;
@property (nonatomic,strong)NSString *video_id;
@end
