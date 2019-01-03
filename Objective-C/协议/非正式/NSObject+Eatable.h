//
//  NSObject+Eatable.h
//  Objective-C
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 非正式协议不需要实现方法
@interface NSObject (Eatable)
- (void) taste;
@end

NS_ASSUME_NONNULL_END
