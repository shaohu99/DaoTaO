//
//  RecentViewController.m
//  DotaRampage
//
//  Created by xx on 16/4/18.
//  Copyright © 2016年 张少华. All rights reserved.
//

#import "RecentViewController.h"

@interface RecentViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation RecentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    NSLog(@"最新");
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
