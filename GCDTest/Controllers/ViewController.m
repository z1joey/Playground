//
//  ViewController.m
//  GCDTest
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
    dispatch_queue_t queue = dispatch_queue_create("myQueue", DISPATCH_QUEUE_SERIAL);
    dispatch_sync(queue, ^{
        for (int i=0; i<10; i++) {
            NSLog(@"%@:1=%d", [NSThread currentThread], i);
        }
    });
    NSLog(@"1 同步任务");
    
    dispatch_async(queue, ^{
        for (int i=0; i<10; i++) {
            NSLog(@"%@:2=%d", [NSThread currentThread], i);
        }
    });
    NSLog(@"2 异步任务");
}

@end
