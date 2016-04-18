//
//  VideoViewController.m
//  DotaRampage
//
//  Created by xx on 16/4/18.
//  Copyright © 2016年 张少华. All rights reserved.
//

#import "VideoViewController.h"
#import "RecentViewController.h"
#import "GameViewController.h"
#import "HighLightsViewController.h"
#import "CommenterViewController.h"
#import "LiveViewController.h"
#import "ConstrantsDefine.h"
@interface VideoViewController ()<UIScrollViewDelegate,UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong)UIScrollView *rootScrollView;

@property (weak, nonatomic) IBOutlet UIButton *RecentBtn;
@property (weak, nonatomic) IBOutlet UIButton *GameBtn;
@property (weak, nonatomic) IBOutlet UIButton *HLBtn;
@property (weak, nonatomic) IBOutlet UIButton *ComBtn;
@property (weak, nonatomic) IBOutlet UIButton *LiveBtn;


@end

@implementation VideoViewController
#pragma mark --设置标题的点击方法.
- (IBAction)RecentAction:(id)sender {
    [self clearColorAndFont];
    [self.RecentBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    self.RecentBtn.titleLabel.font = [UIFont systemFontOfSize:22];
    [self.rootScrollView setContentOffset:CGPointMake(0, 0) animated:YES];
}
- (IBAction)GameAction:(id)sender {
    [self clearColorAndFont];
    [self.GameBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    self.GameBtn.titleLabel.font = [UIFont systemFontOfSize:22];
    [self.rootScrollView setContentOffset:CGPointMake(KScreenWidth, 0) animated:YES];
}
- (IBAction)HighLightAction:(id)sender {
    [self clearColorAndFont];
    [self.HLBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    self.HLBtn.titleLabel.font = [UIFont systemFontOfSize:22];
    [self.rootScrollView setContentOffset:CGPointMake(KScreenWidth * 2, 0) animated:YES];
}
- (IBAction)CommenterAction:(id)sender {
    [self clearColorAndFont];
    [self.ComBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    self.ComBtn.titleLabel.font = [UIFont systemFontOfSize:22];
    [self.rootScrollView setContentOffset:CGPointMake(KScreenWidth * 3, 0) animated:YES];
}
- (IBAction)LiveAction:(id)sender {
    [self clearColorAndFont];
    [self.LiveBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    self.LiveBtn.titleLabel.font = [UIFont systemFontOfSize:22];
    [self.rootScrollView setContentOffset:CGPointMake(KScreenWidth * 4, 0) animated:YES];
}
- (void)clearColorAndFont{
    [self.RecentBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.GameBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.HLBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.ComBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.LiveBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.RecentBtn.titleLabel.font = [UIFont systemFontOfSize:18];
    self.GameBtn.titleLabel.font = [UIFont systemFontOfSize:18];
    self.HLBtn.titleLabel.font = [UIFont systemFontOfSize:18];
    self.ComBtn.titleLabel.font = [UIFont systemFontOfSize:18];
    self.LiveBtn.titleLabel.font = [UIFont systemFontOfSize:18];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化scrollView
    
    self.rootScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, KScreenWidth, KScreenHeight - 64)];
    self.rootScrollView.contentSize = CGSizeMake(KScreenWidth * 5, 0);
    self.rootScrollView.pagingEnabled = YES;
    [self.rootScrollView setIndicatorStyle:UIScrollViewIndicatorStyleBlack];
    //self.rootScrollView.showsHorizontalScrollIndicator = YES;
    //self.rootScrollView.scrollIndicatorInsets = UIEdgeInsetsMake(10, 10, KScreenHeight - 70, 10);
    self.rootScrollView.backgroundColor = [UIColor redColor];
    self.rootScrollView.bounces = NO;
    self.rootScrollView.delegate = self;
    [self.view addSubview:self.rootScrollView];
    
    // 添加5geviewController到scrollView上
    RecentViewController *recentVC = [[RecentViewController alloc]init];
    GameViewController *gameVC = [[GameViewController alloc]init];
    HighLightsViewController *highLightVC = [[HighLightsViewController alloc]init];
    CommenterViewController *commentVC = [[CommenterViewController alloc]init];
    LiveViewController *liveVC = [[LiveViewController alloc]init];
    recentVC.view.frame = CGRectMake(0, 0, KScreenWidth, KScreenHeight);
    gameVC.view.frame = CGRectMake(KScreenWidth,0, KScreenWidth, KScreenHeight);
    highLightVC.view.frame = CGRectMake(KScreenWidth * 2, 0, KScreenWidth, KScreenHeight);
    commentVC.view.frame = CGRectMake(KScreenWidth * 3,0, KScreenWidth, KScreenHeight);
    liveVC.view.frame = CGRectMake(KScreenWidth * 4,0, KScreenWidth, KScreenHeight);
    [self.rootScrollView addSubview:recentVC.view];
    [self.rootScrollView addSubview:gameVC.view];
    [self.rootScrollView addSubview:highLightVC.view];
    [self.rootScrollView addSubview:commentVC.view];
    [self.rootScrollView addSubview:liveVC.view];
    

}

#pragma mark -- uiscrollview的方法
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"decelerating");
    NSLog(@"%f",self.rootScrollView.contentOffset.x);
    NSLog(@"%f",KScreenWidth);
    NSInteger contentOffSet = self.rootScrollView.contentOffset.x / KScreenWidth;
    NSLog(@"%ld",(long)contentOffSet);
    switch (contentOffSet) {
        case 0:
            [self clearColorAndFont];
            [self.RecentBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            self.RecentBtn.titleLabel.font = [UIFont systemFontOfSize:22];
            break;
        case 1:
            NSLog(@"1");
            [self clearColorAndFont];
            [self.GameBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            self.GameBtn.titleLabel.font = [UIFont systemFontOfSize:22];
            [self.rootScrollView setContentOffset:CGPointMake(KScreenWidth, 0) animated:YES];
            break;
        case 2:
            NSLog(@"2");
            [self clearColorAndFont];
            [self.HLBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            self.HLBtn.titleLabel.font = [UIFont systemFontOfSize:22];
            break;
        case 3:
            NSLog(@"3");
            [self clearColorAndFont];
            [self.ComBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            self.ComBtn.titleLabel.font = [UIFont systemFontOfSize:22];
            break;
        case 4:
            NSLog(@"4");
            [self clearColorAndFont];
            [self.LiveBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            self.LiveBtn.titleLabel.font = [UIFont systemFontOfSize:22];
            break;
        default:
            break;
    }

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
