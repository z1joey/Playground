//
//  NSStringTest.m
//  Objective-C
//
//  Created by Yi Zhang on 29/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import "NSStringTest.h"
#import "NSStringUtilities.h"

@implementation NSStringTest
+ (void)testURL {
    NSString *string1 = @"http://www.toppr.net/";
    NSString *string2 = @"hehehe";
    if ([string1 isURL]) {
        NSLog(@"string1 is a URL");
    } else {
        NSLog(@"string1 is not a URL");
    }
    if ([string2 isURL]) {
        NSLog(@"string2 is a URL");
    } else {
        NSLog(@"string2 is not a URL");
    }
}
@end
