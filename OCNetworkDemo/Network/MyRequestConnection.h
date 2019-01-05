//
//  MyRequestConnection.h
//  OCNetworkDemo
//
//  Created by Yi Zhang on 2019/1/6.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyRequestConnection : NSObject
- (void) startRequestWithURLString: (NSString *)urlStr finished:(void(^) (BOOL success, NSData *data)) finish;
@property (nonatomic, strong) NSDictionary *HTTPHeadersDic;
@property (nonatomic, strong) NSString *urlStr;
@end

NS_ASSUME_NONNULL_END
