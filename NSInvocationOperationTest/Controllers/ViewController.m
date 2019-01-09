//
//  ViewController.m
//  NSInvocationOperationTest
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
    NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(task) object:nil];
    // 同步执行，task执行完后才执行for循环
    [operation start];
    for (int i=0; i<10; i++) {
        NSLog(@"%@:%d", [NSThread currentThread], i);
    }
}

- (void)task
{
    for (int i=0; i<10; i++) {
        NSLog(@"%@:%d", [NSThread currentThread], i);
    }
}

@end
