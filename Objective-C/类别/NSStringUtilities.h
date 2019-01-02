//
//  NSStringUtilities.h
//  Objective-C
//
//  Created by Yi Zhang on 29/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Utilities)
-(BOOL) isURL;
@end

//@interface NSString (NumberConvenience)
//// 无法添加新的实例变量
//// 新方法与原始方法冲突的话，新方法优先级更高
//-(NSNumber *) lengthAsNumber;
//@end

NS_ASSUME_NONNULL_END
