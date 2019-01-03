//
//  FKItemTest.m
//  Objective-C
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "FKItemTest.h"
#import "FKItem.h"

// 通过类别调用私有方法
@interface FKItem(fk)
- (double) calDiscount: (double) discount;
@end

@implementation FKItemTest
+ (void)test {
    FKItem *item = [[FKItem alloc] init];
    item.price = 109;
    [item info];
    NSLog(@"促销价格为：%g", [item calDiscount:.75]);
}
@end
