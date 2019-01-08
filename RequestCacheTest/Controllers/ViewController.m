//
//  ViewController.m
//  RequestCacheTest
//
//  Created by Yi Zhang on 8/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    
    // 使用HTTP/HTTPS协议中定义的缓存策略
    // NSURLRequestUseProtocolCachePolicy = 0,
    // 无论有无本地缓存数据，都从服务器进行请求
    // NSURLRequestReloadIgnoringLocalCacheData = 1,
    // * 先检查缓存数据，如果无缓存再进行请求
    // * NSURLRequestReturnCacheDataElseLoad = 2,
    // 类似于离线模式，无论有无缓存都不进行请求
    // NSURLRequestReturnCacheDataDontLoad = 3,
    NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:10];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        NSLog(@"%@", data);
    }];
}


@end
