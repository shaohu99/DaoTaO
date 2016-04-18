//
//  BaseTableViewCell.h
//  DotaRampage
//
//  Created by xx on 16/4/18.
//  Copyright © 2016年 张少华. All rights reserved.
//

#import <UIKit/UIKit.h>
@class baseModel;
@interface BaseTableViewCell : UITableViewCell
//  通过model对象设置cell上的数据
-(void) setDataWithModel:(baseModel *)model;

@end
