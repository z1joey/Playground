//
//  NetworkTest.h
//  Objective-C
//
//  Created by Yi Zhang on 2019/1/6.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkTest : NSObject
{
    NSMutableData *_data;
}
+ (void) asyncTest;
+ (void) syncTest;
@end

NS_ASSUME_NONNULL_END
