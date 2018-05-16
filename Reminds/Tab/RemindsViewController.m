//
//  RemindsViewController.m
//  Reminds
//
//  Created by ZhangPeng on 2018/5/15.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "RemindsViewController.h"
#import "BindingPhoneViewController.h"

@interface RemindsViewController ()

@property (weak, nonatomic) IBOutlet UIView *bindingView;

@end

@implementation RemindsViewController

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    self.tabBarController.tabBar.hidden = NO;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.tabBarController.tabBar.hidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.bindingView bk_whenTapped:^{
        BindingPhoneViewController *bindingController = [[BindingPhoneViewController alloc] init];
        [self setHidesBottomBarWhenPushed:YES];
        [self.navigationController pushViewController:bindingController animated:YES];
    }];
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
