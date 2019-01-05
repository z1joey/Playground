//
//  MyRequestManager.h
//  OCNetworkDemo
//
//  Created by Yi Zhang on 2019/1/6.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyRequestManager : NSObject
+ (MyRequestManager *) sharedManager;
- (void) addRequestToManager: (NSString *)urlStr finished:(void(^) (BOOL success, NSData *data)) finish;
@property(nonatomic, strong)NSDictionary *HTTPHeadersDic;
@end

NS_ASSUME_NONNULL_END
