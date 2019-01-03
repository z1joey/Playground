//
//  FKPrintable.h
//  Objective-C
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKOutput.h"
#import "FKProductable.h"

NS_ASSUME_NONNULL_BEGIN

@protocol FKPrintable <FKOutput, FKProductable>
@required
- (NSString *) printColor;
@end

NS_ASSUME_NONNULL_END
