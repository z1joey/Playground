//
//  CheckTest.m
//  Objective-C
//
//  Created by Yi Zhang on 29/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import "CheckTest.h"

@implementation CheckTest
+ (void)test {
    NSObject *hello = @"Hello";
    NSLog(@"字符串是NSObject类的实例？%d", [hello isKindOfClass:[NSObject class]]);
    NSLog(@"字符串是NSDate类的实例？%d", [hello isKindOfClass:[NSDate class]]);
    NSLog(@"字符串是NSString类的实例？%d", [hello isKindOfClass:[NSString class]]);
}
@end
