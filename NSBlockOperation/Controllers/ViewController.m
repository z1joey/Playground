//
//  ViewController.m
//  NSBlockOperation
//
//  Created by Yi Zhang on 9/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // operation创建时在主线程
    NSBlockOperation *operation = [NSBlockOperation blockOperationWithBlock:^{
        for (int i=0; i<10; i++) {
            NSLog(@"1: %@=%d", [NSThread currentThread], i);
        }
    }];
    
    // 以下都是独立线程异步执行
    [operation addExecutionBlock:^{
        for (int i=0; i<10; i++) {
            NSLog(@"2: %@=%d", [NSThread currentThread], i);
        }
    }];
    
    [operation addExecutionBlock:^{
        for (int i=0; i<10; i++) {
            NSLog(@"3: %@=%d", [NSThread currentThread], i);
        }
    }];
    
    [operation start];
}


@end
