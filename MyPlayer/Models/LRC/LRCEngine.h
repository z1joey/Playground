//
//  LRCEngine.h
//  MyPlayer
//
//  Created by Yi Zhang on 7/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LRCEngine : NSObject
- (instancetype) initWithFile: (NSString *) fileName;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *albume;
@property (nonatomic, strong) NSString *title;
- (void) getCurrentLrcInLRCArray: (void(^) (NSArray *lrcArray, int currentIndex)) handle atTime:(float) time;
@end

NS_ASSUME_NONNULL_END
