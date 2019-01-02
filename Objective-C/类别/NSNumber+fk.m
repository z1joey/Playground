//
//  NSNumber+fk.m
//  Objective-C
//
//  Created by Yi Zhang on 2019/1/2.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "NSNumber+fk.h"

//小括号不能少
@implementation NSNumber(fk)
- (NSNumber *)add:(double)num2 {
    return [NSNumber numberWithDouble:([self doubleValue] + num2)];
}
- (NSNumber *)substract:(double)num2 {
    return [NSNumber numberWithDouble:([self doubleValue] - num2)];
}
- (NSNumber *)multiply:(double)num2 {
    return [NSNumber numberWithDouble:([self doubleValue] * num2)];
}
- (NSNumber *)divide:(double)num2 {
    return [NSNumber numberWithDouble:([self doubleValue] / num2)];
}
@end
