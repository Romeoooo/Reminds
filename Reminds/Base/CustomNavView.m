//
//  CustomNavView.m
//  Reminds
//
//  Created by ZhangPeng on 2018/5/13.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "CustomNavView.h"

@implementation CustomNavView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithHexString:@"#3E4952"];
        
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, frame.size.height - 44, frame.size.width, 44)];
        self.titleLabel.textColor = [UIColor whiteColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.font = [UIFont systemFontOfSize:18];
        [self addSubview:self.titleLabel];
        
        self.backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, frame.size.height - 44, 44, 44)];
        [self.backButton setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
        [self.backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.backButton];
    }
    return self;
}

- (void)backAction{
    if (!self.viewController.navigationController.viewControllers) {
        [self.viewController dismissViewControllerAnimated:YES completion:nil];
    }else{
        [self.viewController.navigationController popViewControllerAnimated:YES];
    }
}

@end
