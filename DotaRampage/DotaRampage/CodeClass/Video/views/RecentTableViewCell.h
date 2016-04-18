//
//  RecentTableViewCell.h
//  DotaRampage
//
//  Created by xx on 16/4/18.
//  Copyright © 2016年 张少华. All rights reserved.
//

#import "BaseTableViewCell.h"
@class RecentGameModel;
@interface RecentTableViewCell : BaseTableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *GameImage;
@property (weak, nonatomic) IBOutlet UILabel *MainTitle;
@property (weak, nonatomic) IBOutlet UILabel *GameDuration;
@property (weak, nonatomic) IBOutlet UILabel *GameDurationTime;
@property (weak, nonatomic) IBOutlet UILabel *GameTime;
@property (weak, nonatomic) IBOutlet UILabel *ShowGameTime;
@property (weak, nonatomic) IBOutlet UILabel *VideoType;

-(void)setDataWithModel:(RecentGameModel *)model;

@end
