//
//  BaseViewController.m
//  Reminds
//
//  Created by ZhangPeng on 2018/5/13.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "BaseViewController.h"
#import "CustomNavView.h"

@interface BaseViewController ()

@property (strong, nonatomic) CustomNavView *navView; //导航栏

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat navHeight;
    if (iPhoneX) {
        navHeight = 84;
    }else{
        navHeight = 64;
    }
    self.navView = [[CustomNavView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, navHeight)];
    [self.view addSubview:self.navView];
}

- (void)setNavTitle:(NSString *)navTitle{
    self.navView.titleLabel.text = navTitle;
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
