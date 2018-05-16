//
//  CreatRemindsViewController.m
//  Reminds
//
//  Created by ZhangPeng on 2018/5/16.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "CreatRemindsViewController.h"

@interface CreatRemindsViewController ()

@end

@implementation CreatRemindsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavTitle:@"创建提醒"];
    [self.navView.backButton setImage:[UIImage imageNamed:@"cha"] forState:UIControlStateNormal];
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
