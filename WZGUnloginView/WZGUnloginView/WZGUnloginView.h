//
//  WZGUnloginView.h
//  WZGUnloginView
//
//  Created by qishang on 16/1/28.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WZGUnloginView : UIView

@property (nonatomic, strong) UIButton *maxCoverBtn;

+ (instancetype)wzgunloginView;

- (void)showUnloginViewInview:(UIView *)view;

@end
