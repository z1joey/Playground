//
//  LRCItem.m
//  MyPlayer
//
//  Created by Yi Zhang on 7/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "LRCItem.h"

@implementation LRCItem
- (BOOL)isTimeOlderThanAnother:(LRCItem *)item
{
    return  self.time > item.time;
}
@end
