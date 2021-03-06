//
//  ForgetViewController.m
//  Reminds
//
//  Created by ZhangPeng on 2018/5/13.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "ForgetViewController.h"

@interface ForgetViewController ()

@property (weak, nonatomic) IBOutlet UIView *tfView;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
@property (weak, nonatomic) IBOutlet UITextField *codeTF;
@property (weak, nonatomic) IBOutlet UIButton *codeButton;
@property (weak, nonatomic) IBOutlet UIButton *changeButton;

@end

@implementation ForgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavTitle:@"忘记密码"];
    
    self.tfView.layer.cornerRadius = 3;
    self.codeButton.layer.cornerRadius = 3;
    self.changeButton.layer.cornerRadius = self.changeButton.height / 2;
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
