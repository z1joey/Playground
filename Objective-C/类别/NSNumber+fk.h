//
//  NSNumber+fk.h
//  Objective-C
//
//  Created by Yi Zhang on 2019/1/2.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSNumber (fk)
- (NSNumber *) add: (double) num2;
- (NSNumber *) substract: (double) num2;
- (NSNumber *) multiply: (double) num2;
- (NSNumber *) divide: (double) num2;
@end

NS_ASSUME_NONNULL_END
