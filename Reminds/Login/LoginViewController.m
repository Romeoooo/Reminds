//
//  LoginViewController.m
//  Reminds
//
//  Created by ZhangPeng on 2018/5/12.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "LoginViewController.h"
#import "ForgetViewController.h"
#import "RegisterViewController.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UIView *tfView;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UITextField *passowrdTF;
@property (weak, nonatomic) IBOutlet UIButton *forgetButton;
@property (weak, nonatomic) IBOutlet UIButton *noAccountButton;
@property (weak, nonatomic) IBOutlet UIButton *wechatButton;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tfView.layer.cornerRadius = 3;
    self.wechatButton.layer.cornerRadius = self.wechatButton.frame.size.height / 2;
    self.registerButton.layer.cornerRadius = self.registerButton.frame.size.height / 2;
    
    [self.forgetButton bk_addEventHandler:^(id sender) {
        ForgetViewController *forgetVC = [[ForgetViewController alloc] init];
        [self.navigationController pushViewController:forgetVC animated:YES];
    } forControlEvents:UIControlEventTouchUpInside];
    
    [self.registerButton bk_addEventHandler:^(id sender) {
        RegisterViewController *registerVC = [[RegisterViewController alloc] init];
        [self.navigationController pushViewController:registerVC animated:YES];
    } forControlEvents:UIControlEventTouchUpInside];
    
    [self.noAccountButton bk_addEventHandler:^(id sender) {
        RegisterViewController *registerVC = [[RegisterViewController alloc] init];
        [self.navigationController pushViewController:registerVC animated:YES];
    } forControlEvents:UIControlEventTouchUpInside];
    
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
