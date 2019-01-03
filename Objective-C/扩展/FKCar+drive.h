//
//  FKCar+drive.h
//  Objective-C
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface FKCar()
@property (nonatomic, copy) NSString *color;
- (void) drive: (NSString *) owner;
@end

NS_ASSUME_NONNULL_END

// 定义在m文件为私有，h文件为公有
// 只能有属性和方法，不能有字段
// 不必实现分类中所有方法
