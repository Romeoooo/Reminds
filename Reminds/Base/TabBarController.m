//
//  TabBarController.m
//  Reminds
//
//  Created by ZhangPeng on 2018/5/15.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "TabBarController.h"
#import "RemindsViewController.h"
#import "ContactViewController.h"
#import "CreatRemindsViewController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViewControllers];
}

- (void)setupViewControllers{
    
    RemindsViewController *remindsController = [RemindsViewController new];
    UINavigationController *nav_reminds = [[UINavigationController alloc] initWithRootViewController:remindsController];
    nav_reminds.navigationBarHidden = YES;
    nav_reminds.tabBarItem.image = [UIImage imageNamed:@"tab_reminds"];
    nav_reminds.title = @"提醒事项";
    
    ContactViewController *contactController = [ContactViewController new];
    UINavigationController *nav_contact = [[UINavigationController alloc] initWithRootViewController:contactController];
    nav_contact.navigationBarHidden = YES;
    nav_contact.tabBarItem.image = [UIImage imageNamed:@"tab_contact"];
    nav_contact.title = @"联系人";
    
    [self setViewControllers:@[nav_reminds, nav_contact] animated:YES];
    
    UIButton *addRemindsButton = [[UIButton alloc] initWithFrame:CGRectMake(kScreenWidth/2 - 35, -25, 70, 70)];
    [addRemindsButton setImage:[UIImage imageNamed:@"add_reminds"] forState:UIControlStateNormal];
    addRemindsButton.layer.cornerRadius = 35;
    [addRemindsButton addTarget:self action:@selector(addRemindsAction) forControlEvents:UIControlEventTouchUpInside];
    [self.tabBar addSubview:addRemindsButton];
}

- (void)addRemindsAction{
    CreatRemindsViewController *creatController = [[CreatRemindsViewController alloc] init];
    [self presentViewController:creatController animated:YES completion:nil];
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
