//
//  RegisViewController.m
//  Login
//
//  Created by Yi Zhang on 4/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "RegisViewController.h"

@interface RegisViewController ()

@end

@implementation RegisViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, SCREEN_SIZE.width - 40, 60)];
    label.font = [UIFont systemFontOfSize:23];
    label.text = @"注册界面";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(SCREEN_SIZE.width/2 - 50, 220, 100, 30);
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(retu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void) retu {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
