//
//  GCDTest.h
//  Objective-C
//
//  Created by Yi Zhang on 9/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GCDTest : NSObject
// 同步 + 并行
+ (void)concurrentSyncTest1;
// 同步 + 多并行
+ (void)concurrentSyncTest2;
// 异步 + 并行
+ (void)serialAsyncTest1;
// 异步 + 多并行
+ (void)serialAsyncTest2;
// 异步 + 串行
+ (void)serialSyncTest1;
// 异步 + 多串行
+ (void)serialSyncTest2;
@end

NS_ASSUME_NONNULL_END
