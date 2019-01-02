//
//  FKEatableTest.m
//  Objective-C
//
//  Created by Yi Zhang on 2019/1/2.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "FKEatableTest.h"
#import "FKApple.h"

@implementation FKEatableTest
+ (void)test {
    // 必须存在
    @try {
        FKApple *apple = [[FKApple alloc] init];
        [apple taste];
    } @catch (NSException *exception) {
        NSLog(@"==捕捉异常==");
        NSLog(@"捕捉异常：%@, %@", exception.name, exception.reason);
    // 无论如何都会发生
    } @finally {
        NSLog(@"资源回收");
    }
}
@end
