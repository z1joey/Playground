//
//  NetworkTest.m
//  Objective-C
//
//  Created by Yi Zhang on 2019/1/6.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "NetworkTest.h"

@implementation NetworkTest
+ (void)asyncTest
{
    NSURL *url = [NSURL URLWithString:@"https://devil.apeuni.com/api/v1/questions?model=ro"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    // 请求失败，可能和info.plist配置有关
//    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
//        NSString *dataStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//        NSLog(@"%@",dataStr);
//    }];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    NSLog(@"异步网络请求");
}


+(void)syncTest
{
    NSURL *url = [NSURL URLWithString:@"https://devil.apeuni.com/api/v1/questions?model=ro"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSString *dataStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"%@",dataStr);
}

@end
