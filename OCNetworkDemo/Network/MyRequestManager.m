//
//  MyRequestManager.m
//  OCNetworkDemo
//
//  Created by Yi Zhang on 2019/1/6.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "MyRequestManager.h"
#import "MyRequestConnection.h"

@implementation MyRequestManager
{
    NSMutableArray *_requestConnectionArray;
}
+ (MyRequestManager *)sharedManager
{
    static MyRequestManager *manager = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        manager = [[MyRequestManager alloc] init];
    });
    return manager;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _requestConnectionArray = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)addRequestToManager:(NSString *)urlStr finished:(void (^)(BOOL, NSData * _Nonnull))finish
{
    for(MyRequestConnection *connection in _requestConnectionArray) {
        if ([connection.urlStr isEqualToString:urlStr]) {
            return;
        }
    }
    MyRequestConnection *connection = [[MyRequestConnection alloc] init];
    if(self.HTTPHeadersDic) {
        connection.HTTPHeadersDic = self.HTTPHeadersDic;
    }
    [_requestConnectionArray addObject:connection];
    [connection startRequestWithURLString:urlStr finished:^(BOOL success, NSData * _Nonnull data) {
        [self->_requestConnectionArray removeObject:connection];
        finish(success, data);
    }];
}
@end
