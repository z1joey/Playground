//
//  MyRequestConnection.m
//  OCNetworkDemo
//
//  Created by Yi Zhang on 2019/1/6.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "MyRequestConnection.h"

@implementation MyRequestConnection

- (void)startRequestWithURLString:(NSString *)urlStr finished:(void (^)(BOOL, NSData * _Nonnull))finish
{
    self.urlStr = urlStr;
    NSURL *url = [NSURL URLWithString:urlStr];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    if (self.HTTPHeadersDic) {
        for (NSString *key in self.HTTPHeadersDic.allKeys) {
            [request setValue:[self.HTTPHeadersDic objectForKey:key] forHTTPHeaderField:key];
        }
    }
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        if (connectionError==nil) {
            finish(YES, data);
        } else {
            NSLog(@"网络出错");
            finish(NO, data);
        }
    }];
}

@end
