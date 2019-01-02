//
//  FKThrowTest.m
//  Objective-C
//
//  Created by Yi Zhang on 2019/1/2.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "FKThrowTest.h"
#import "FKDog.h"

@implementation FKThrowTest
+ (void)test {
    FKDog *dog = [[FKDog alloc] init];
    dog.age = 20;
    NSLog(@"狗的年龄为: %d", dog.age);
    dog.age = 80;
}
@end
