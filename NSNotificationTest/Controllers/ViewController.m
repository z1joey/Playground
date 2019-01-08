//
//  ViewController.m
//  NSNotificationTest
//
//  Created by Yi Zhang on 8/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noti:) name:@"noti" object:nil];
}

- (void)noti: (NSNotification *)noti
{
    NSLog(@"%@", noti.userInfo);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSNotification *noti = [NSNotification notificationWithName:@"noti" object:nil userInfo:@{@"message":@"HelloWorld"}];
    [[NSNotificationCenter defaultCenter] postNotification:noti];
}

@end
