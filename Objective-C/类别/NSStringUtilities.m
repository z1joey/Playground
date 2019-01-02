//
//  NSStringUtilities.m
//  Objective-C
//
//  Created by Yi Zhang on 29/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import "NSStringUtilities.h"

@implementation NSString (Utilities)
- (BOOL)isURL {
    if ([self hasPrefix:@"http://"]) {
        return YES;
    } else {
        return NO;
    }
}
@end

//@implementation NSString (NumberConvenience)
//- (NSNumber *)lengthAsNumber {
//    unsigned int length = [self length];
//    return [NSNumber numberWithUnsignedInteger:length];
//}
//@end
