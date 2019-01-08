//
//  ViewController.m
//  PlistTestTwo
//
//  Created by Yi Zhang on 8/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *plistPath1 = [paths objectAtIndex:0];
    NSString *fileName = [plistPath1 stringByAppendingPathComponent:@"my.plist"];
    NSDictionary *dic = @{@"my":@"test"};
    // 在沙盒目录中写入数据
    [dic writeToFile:fileName atomically:YES];
    NSDictionary *getDic = [NSDictionary dictionaryWithContentsOfFile:fileName];
    NSLog(@"%@",getDic);
}


@end
