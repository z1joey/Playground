//
//  ViewController.m
//  NSThreadTest
//
//  Created by Yi Zhang on 8/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 创建匿名线程来执行selector中的方法
    [NSThread detachNewThreadSelector:@selector(newThread) toTarget:self withObject:nil];
    // 和下面的线程同时执行
    for (int i=0; i<10; i++) {
        NSLog(@"主线程：%@ %d", [NSThread currentThread], i);
    }
}

- (void)newThread
{
    for (int i=0; i<10; i++) {
        NSLog(@"子线程: %@ %d", [NSThread currentThread], i);
    }
    [NSThread exit];
}


@end
