//
//  BlockTest.m
//  Objective-C
//
//  Created by Yi Zhang on 8/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "BlockTest.h"

@implementation BlockTest

- (void) showResult
{
    int tmp = 2;
    NSMutableString *muStr = [[NSMutableString alloc] initWithString:@"start "];
    block1 = ^(int a, int b) {
        // 外部值类型无法在block中被修改
        // tmp = 5;
        [muStr appendString:@"testing"];
        NSLog(@"%@", muStr);
        return a + b + tmp;
    };
    NSLog(@"Result is %d", block1(1,1));
}

@end
