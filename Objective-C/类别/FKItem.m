//
//  FKItem.m
//  Objective-C
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "FKItem.h"

@implementation FKItem
// 生成set和get方法
@synthesize price;

- (void)info {
    NSLog(@"这是一个普通的方法");
    
}

//私有方法
- (double) calDiscount: (double) discount {
    return self.price * discount;
}
@end
