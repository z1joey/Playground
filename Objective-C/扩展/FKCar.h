//
//  FKCar.h
//  Objective-C
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKCar : NSObject
@property (nonatomic, copy) NSString *brand;
@property (nonatomic, copy) NSString *model;
- (void) drive;
@end

NS_ASSUME_NONNULL_END
