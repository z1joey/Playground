//
//  InformalProtocolTest.m
//  Objective-C
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "InformalProtocolTest.h"
#import "PRApple.h"

@implementation InformalProtocolTest
+ (void)test {
    PRApple *app = [[PRApple alloc] init];
    [app taste];
}
@end
