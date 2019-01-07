//
//  ViewController.m
//  MyPlayer
//
//  Created by Yi Zhang on 7/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "ViewController.h"
#import "LRCEngine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LRCEngine *engine = [[LRCEngine alloc] initWithFile:@"遥远的你"];
    [engine getCurrentLrcInLRCArray:^(NSArray * lrcArray, int currentIndex) {
        if (lrcArray) {
            // 调试失败
            //NSLog(@"%@\n======\n%@", lrcArray, [lrcArray[currentIndex] lrc]);
        }
    } atTime:100];
}


@end
