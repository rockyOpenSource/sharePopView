//
//  WZGUnloginView.m
//  WZGUnloginView
//
//  Created by qishang on 16/1/28.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "WZGUnloginView.h"

//记录为登录视图的高度
static const CGFloat unloginViewHight = 250.f;

@interface WZGUnloginView ()

//记录父视图的bounds
@property (nonatomic, assign) CGRect superViewBound;

@end

@implementation WZGUnloginView

- (void)awakeFromNib {

    self.backgroundColor = [UIColor whiteColor];
    
    self.maxCoverBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    _maxCoverBtn.frame = [UIScreen mainScreen].bounds;
    _maxCoverBtn.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [_maxCoverBtn addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_maxCoverBtn];
    
}

+ (instancetype)wzgunloginView {

    WZGUnloginView *view = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
    return view;
}

//显示未登录的视图
- (void)showUnloginViewInview:(UIView *)view {
    
    [view addSubview:self.maxCoverBtn];
    
    self.superViewBound = view.frame;
    
    self.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, unloginViewHight);
    [view addSubview:self];
    
    [UIView animateWithDuration:0.3 animations:^{
        
        self.frame = CGRectMake(0, view.bounds.size.height - unloginViewHight, view.bounds.size.width, unloginViewHight);
    } completion:^(BOOL finished) {
       
        
    }];

}

- (void)dismiss {

    [UIView animateWithDuration:0.3 animations:^{
        
        self.frame = CGRectMake(0, self.superViewBound.size.height, self.superViewBound.size.width, unloginViewHight);
        
    } completion:^(BOOL finished) {
        
        [self.maxCoverBtn removeFromSuperview];
        [self removeFromSuperview];
    }];

}

- (IBAction)signBtn:(id)sender {
    
    
}

- (IBAction)weixinBtn:(id)sender {
    
    
}

@end
