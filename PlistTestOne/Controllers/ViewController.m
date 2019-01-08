//
//  ViewController.m
//  PlistTestOne
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
    NSLog(@"view did load");
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"NewPlist" ofType:@"plist"];
    NSDictionary *rootDic = [NSDictionary dictionaryWithContentsOfFile:path];
    for (NSString *key in rootDic) {
        NSLog(@"%@:%@", key, rootDic[key]);
    }
}

@end
