//
//  ViewController.m
//  WZGUnloginView
//
//  Created by qishang on 16/1/28.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "ViewController.h"
#import "WZGUnloginView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)shareBtn:(id)sender {
    
    WZGUnloginView *unloginView = [WZGUnloginView wzgunloginView];
    [unloginView showUnloginViewInview:self.view];
    
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
