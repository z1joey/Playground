//
//  MyMusicPlayer.h
//  MyPlayer
//
//  Created by Yi Zhang on 7/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MyMusicPlayerDelegate <NSObject>
- (void) musicPlayEndAndWillContinuePlaying: (BOOL)play;
@end

@interface MyMusicPlayer : NSObject<AVAudioPlayerDelegate>
@property(nonatomic, strong)NSArray *songsArray;
@property(nonatomic, strong)NSArray *lrcsArray;
@property(nonatomic, assign)BOOL isRunLoop;
@property(nonatomic, assign)BOOL isRandom;
@property(nonatomic, assign)BOOL isPlaying;
@property(nonatomic, weak)id<MyMusicPlayerDelegate> delegate;
@property(nonatomic, assign)int currentIndex;
@property(nonatomic, assign)int currentSongTime;
@property(nonatomic, assign)int hadPlayTime;
- (void) play;
- (void) stop;
- (void) playOrStop;
- (void) lastMusic;
- (void) nextMusic;
- (void) end;
- (void) playAtIndex: (int)index isPlay: (BOOL)play;
@end


NS_ASSUME_NONNULL_END
