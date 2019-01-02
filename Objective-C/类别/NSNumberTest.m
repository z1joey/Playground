//
//  NSNumberTest.m
//  Objective-C
//
//  Created by Yi Zhang on 2019/1/2.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "NSNumberTest.h"
#import "NSNumber+fk.h"

@implementation NSNumberTest
+ (void)test {
    NSNumber *num = [NSNumber numberWithInt: 3];

    NSNumber *add = [num add:2.4];
    NSLog(@"%@", add);

    NSNumber *sub = [num substract:2.4];
    NSLog(@"%@", sub);

    NSNumber *mul = [num multiply:2.4];
    NSLog(@"%@", mul);

    NSNumber *divide = [num divide:2.4];
    NSLog(@"%@", divide);
}
@end
