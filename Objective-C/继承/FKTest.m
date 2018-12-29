//
//  FKTest.m
//  Objective-C
//
//  Created by Yi Zhang on 29/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import "FKTest.h"
#import "FKSub.h"

@implementation FKTest
+ (void)fkTest {
    FKSub *sub = [[FKSub alloc] init];
    [sub accessOwner];
}
- (void)print  {
    NSLog(@"测试");
}
@end
