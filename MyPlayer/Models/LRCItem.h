//
//  LRCItem.h
//  MyPlayer
//
//  Created by Yi Zhang on 7/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LRCItem : NSObject
@property (nonatomic) float time;
@property (nonatomic, copy) NSString *lrc;
- (BOOL) isTimeOlderThanAnother: (LRCItem *) item;
@end

NS_ASSUME_NONNULL_END
