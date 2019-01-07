//
//  MyMusicPlayer.m
//  MyPlayer
//
//  Created by Yi Zhang on 7/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "MyMusicPlayer.h"
#import "AppDelegate.h"

@implementation MyMusicPlayer
{
    AVAudioPlayer *_player;
    NSTimer *_timer;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:1/60.0 target:self selector:@selector(update) userInfo:nil repeats:YES];
        [[NSRunLoop mainRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
        AppDelegate *delegate = [UIApplication sharedApplication].delegate;
        //delegate not found on object
        //delegate.play = self;
    }
    return self;
}

@end
