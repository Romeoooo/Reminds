//
//  Constant.h
//  Reminds
//
//  Created by ZhangPeng on 2018/5/14.
//  Copyright © 2018年 braspring. All rights reserved.
//

#ifndef Constant_h
#define Constant_h

///------
/// Common
///------
#define iPhoneX [UIScreen mainScreen].bounds.size.height == 812.0 ? 1 : 0

///------
/// Server
///------
//#define kHost @"http://118.89.229.200:3000/"   //正式环境
#define kHost @"http://39.108.14.79:3000/"    //测试环境

///------
/// Window、AppDelegate
///------
#define kKeyWindow          [UIApplication sharedApplication].keyWindow
#define kAppDelegate        ((AppDelegate*)[UIApplication sharedApplication].delegate)


///------
/// 注册通知与发送通知
///------
#define addNObserver(_selector,_name) ([[NSNotificationCenter defaultCenter] addObserver:self selector:_selector name:_name object:nil])
#define removeNObserver(_name) ([[NSNotificationCenter defaultCenter] removeObserver:self name:_name object:nil])
#define postN(_name) ([[NSNotificationCenter defaultCenter] postNotificationName:_name object:nil userInfo:nil])
#define postNWithObj(_name,_obj) ([[NSNotificationCenter defaultCenter] postNotificationName:_name object:_obj userInfo:nil])
#define postNWithInfo(_name,_info) ([[NSNotificationCenter defaultCenter] postNotificationName:_name object:nil userInfo:_info])

#endif /* Constant_h */
