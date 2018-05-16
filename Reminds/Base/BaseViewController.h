//
//  BaseViewController.h
//  Reminds
//
//  Created by ZhangPeng on 2018/5/13.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomNavView.h"

@interface BaseViewController : UIViewController

@property (strong, nonatomic) CustomNavView *navView; //导航栏

- (void)setNavTitle:(NSString *)navTitle;

@end
