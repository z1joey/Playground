//
//  ViewController.m
//  OCNetworkDemo
//
//  Created by Yi Zhang on 2018/12/28.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import "ViewController.h"
#import "Network/MyRequestManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    NSURL *url = [NSURL URLWithString:@"https://devil.apeuni.com/api/v1/questions?model=ro"];
//    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
//    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
//    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
//        NSString *dataStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//        NSLog(@"%@",dataStr);
//    }];
//    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
//    NSLog(@"异步网络请求");
    [self myNetworkTest];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"开始接受数据");
    _data = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [_data appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"接受数据完成");
    NSString *dataStr = [[NSString alloc] initWithData:_data encoding:NSUTF8StringEncoding];
    NSLog(@"%@", dataStr);
}

- (void) myNetworkTest
{
    MyRequestManager *manager = [MyRequestManager sharedManager];
    manager.HTTPHeadersDic = @{@"Accept":@"application/json"};
    [manager addRequestToManager:@"https://devil.apeuni.com/api/v1/questions?model=ro" finished:^(BOOL success, NSData * _Nonnull data) {
        if (success) {
            NSString *dataStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@", dataStr);
        }
    }];
}

@end
