//
//  FKDog.m
//  Objective-C
//
//  Created by Yi Zhang on 2019/1/2.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "FKDog.h"
#import "FKException.h"

@implementation FKDog
- (void)setAge:(int)age {
    if(self.age != age) {
        if(age > 15 || age <0) {
            @throw [[FKException alloc]
                    initWithName:@"Illeagal Argument Exception"
                          reason:@"狗的年龄必须是0-15之间"
                        userInfo:nil];
        }
        _age = age;
    }
}
@end
