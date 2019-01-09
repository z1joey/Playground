//
//  GCDTest.m
//  Objective-C
//
//  Created by Yi Zhang on 9/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "GCDTest.h"

@implementation GCDTest

// 同步 + 并行
+ (void)concurrentSyncTest1
{
    NSLog(@"同步 + 并行 %@", [NSThread currentThread]);
    // 创建并行队列
    dispatch_queue_t queue = dispatch_queue_create("Queue_Con", DISPATCH_QUEUE_CONCURRENT);
    // 在并行队列上同步执行任务
    dispatch_sync(queue, ^{
        NSLog(@"第一个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"第二个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"第三个任务当前线程为: %@", [NSThread currentThread]);
    });
    NSLog(@"结束执行任务 %@", [NSThread currentThread]);
    // 并行队列在同步执行中不会开辟新线程，所有任务都在主线程一个一个串行执行
    // 并行只在异步执行有效
}

// 同步 + 多并行
+ (void)concurrentSyncTest2
{
    NSLog(@"同步 + 多并行 %@", [NSThread currentThread]);
    // 创建并行队列
    dispatch_queue_t queue1 = dispatch_queue_create("Queue_Con", DISPATCH_QUEUE_CONCURRENT);
    dispatch_queue_t queue2 = dispatch_queue_create("Queue_Con", DISPATCH_QUEUE_CONCURRENT);
    // 在并行队列上同步执行任务
    dispatch_sync(queue1, ^{
        NSLog(@"queue1 第一个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_sync(queue1, ^{
        NSLog(@"queue1 第二个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_sync(queue2, ^{
        NSLog(@"queue2 第一个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_sync(queue2, ^{
        NSLog(@"queue2 第二个任务当前线程为: %@", [NSThread currentThread]);
    });
    NSLog(@"结束执行任务 %@", [NSThread currentThread]);
}

// 异步 + 串行
+ (void)serialAsyncTest1
{
    NSLog(@"异步 + 串行 %@", [NSThread currentThread]);
    // 创建串行队列
    dispatch_queue_t queue = dispatch_queue_create("Queue_Ser", DISPATCH_QUEUE_SERIAL);
    // 在串行队列上异步执行任务
    dispatch_async(queue, ^{
        NSLog(@"第一个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"第二个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"第三个任务当前线程为: %@", [NSThread currentThread]);
    });
    NSLog(@"结束执行任务 %@", [NSThread currentThread]);
    // 最先开始任务在主线程中执行
    // 队列中的任务在新线程中执行
}

// 异步 + 多条串行
+ (void)serialAsyncTest2
{
    NSLog(@"异步 + 多条串行 %@", [NSThread currentThread]);
    // 创建串行队列
    dispatch_queue_t queue1 = dispatch_queue_create("Queue_Ser", DISPATCH_QUEUE_SERIAL);
    dispatch_queue_t queue2 = dispatch_queue_create("Queue_Ser", DISPATCH_QUEUE_SERIAL);
    // 在串行队列上异步执行任务
    dispatch_async(queue1, ^{
        NSLog(@"queue1 第一个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_async(queue1, ^{
        NSLog(@"queue1 第二个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_async(queue2, ^{
        NSLog(@"queue2 第一个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_async(queue2, ^{
        NSLog(@"queue2 第二个任务当前线程为: %@", [NSThread currentThread]);
    });

    NSLog(@"结束执行任务 %@", [NSThread currentThread]);
    // 为每一条串行队列新建线程
}

// 异步 + 串行
+ (void)serialSyncTest1
{
    NSLog(@"异步 + 串行 %@", [NSThread currentThread]);
    // 创建并行队列
    dispatch_queue_t queue = dispatch_queue_create("Queue_Ser", DISPATCH_QUEUE_CONCURRENT);
    // 在并行队列上异步执行任务
    dispatch_async(queue, ^{
        NSLog(@"第一个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"第二个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"第三个任务当前线程为: %@", [NSThread currentThread]);
    });
    NSLog(@"结束执行任务 %@", [NSThread currentThread]);
    // 异步一定会创建新队列
}

// 异步 + 多串行
+ (void)serialSyncTest2
{
    NSLog(@"异步 + 多串行 %@", [NSThread currentThread]);
    // 创建并行队列
    dispatch_queue_t queue1 = dispatch_queue_create("Queue_Ser", DISPATCH_QUEUE_CONCURRENT);
    dispatch_queue_t queue2 = dispatch_queue_create("Queue_Ser", DISPATCH_QUEUE_CONCURRENT);
    // 在并行队列上异步执行任务
    dispatch_async(queue1, ^{
        NSLog(@"queue1 第一个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_async(queue1, ^{
        NSLog(@"queue1 第二个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_async(queue2, ^{
        NSLog(@"queue2 第一个任务当前线程为: %@", [NSThread currentThread]);
    });
    dispatch_async(queue2, ^{
        NSLog(@"queue2 第二个任务当前线程为: %@", [NSThread currentThread]);
    });
    NSLog(@"结束执行任务 %@", [NSThread currentThread]);
    // 异步一定会创建新队列
}

@end
