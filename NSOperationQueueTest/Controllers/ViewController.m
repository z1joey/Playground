//
//  ViewController.m
//  NSOperationQueueTest
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
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    NSInvocationOperation *op1 = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(task) object:nil];
    // queue中的task在独立线程中
    [queue addOperation:op1];
    for (int i=0; i<10; i++) {
        NSLog(@"%@=%d", [NSThread currentThread], i);
    }
}

- (void)task
{
    for (int i=0; i<10; i++) {
        NSLog(@"%@=%d", [NSThread currentThread], i);
    }
}


@end
