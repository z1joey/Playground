//
//  FKSub.m
//  Objective-C
//
//  Created by Yi Zhang on 29/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import "FKSub.h"

@implementation FKSub
{
    int _a;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self->_a = 7;
    }
    return self;
}

- (void)accessOwner {
    NSLog(@"子类中_a成员变量: %d", _a);
    NSLog(@"父类中被隐藏的_a成员变量: %d", super.a);
}
@end
