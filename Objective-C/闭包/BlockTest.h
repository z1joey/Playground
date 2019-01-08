//
//  BlockTest.h
//  Objective-C
//
//  Created by Yi Zhang on 8/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef int (^myBlcok)(int, int);
@interface BlockTest : NSObject
{
    myBlcok block1;
}

// 类方法中无法使用block
 - (void) showResult;
@end

NS_ASSUME_NONNULL_END
