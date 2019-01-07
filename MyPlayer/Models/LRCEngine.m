//
//  LRCEngine.m
//  MyPlayer
//
//  Created by Yi Zhang on 7/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "LRCEngine.h"
#import "LRCItem.h"

@implementation LRCEngine
{
    NSMutableArray *_lrcArray;
}

- (instancetype)initWithFile:(NSString *)fileName
{
    if (self=[super init]) {
        _lrcArray = [[NSMutableArray alloc] init];
        [self creatDataWithFile:fileName];
    }
    return self;
}

- (void)creatDataWithFile:(NSString *)fileName
{
    NSString *lrcPath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"lrc"];
    NSError *error;
    NSString *dataStr = [NSString stringWithContentsOfFile:lrcPath encoding:NSUTF8StringEncoding error:&error];
    NSMutableString *tmpStr = [[NSMutableString alloc] init];
    NSArray *tmpArray = [dataStr componentsSeparatedByString:@"\r"];
    for (int i=0; i<tmpArray.count; i++) {
        [tmpStr appendString:tmpArray[i]];
    }
    NSArray *lrcArray = [tmpStr componentsSeparatedByString:@"\n"];
    for (NSString *lrcStr in lrcArray) {
        if (lrcStr.length == 0) {
            continue;
        }
        unichar c = [lrcStr characterAtIndex:1];
        if (c>='0' && c<='9') {
            [self getLrcData:lrcStr];
        } else {
            [self getInfoData:lrcStr];
        }
    }
    [_lrcArray sortedArrayUsingSelector:@selector(isTimeOlderThanAnother:)];
}

- (void) getLrcData: (NSString *) lrcStr
{
    NSArray *arr = [lrcStr componentsSeparatedByString:@"]"];
    for (int i = 0; i < arr.count - 1; i++) {
        NSString *timeStr = [arr[i] substringFromIndex:1];
        NSArray *timeArr = [timeStr componentsSeparatedByString:@":"];
        float min = [timeArr[0] floatValue];
        float sec = [timeArr[1] floatValue];
        
        LRCItem *item = [[LRCItem alloc] init];
        item.time = min*60 + sec;
        item.lrc = [arr lastObject];
        [_lrcArray addObject:item];
    }
}

- (void)getInfoData: (NSString *) lrcStr
{
    NSArray *arr = [lrcStr componentsSeparatedByString:@":"];
    NSInteger len = [arr[1] length];
    if ([arr[0] isEqualToString:@"[ti"]) {
        _title = [arr[1] substringFromIndex:len - 1];
    } else if ([arr[0] isEqualToString:@"[ar"]) {
        _author = [arr[1] substringToIndex:len - 1];
    } else if ([arr[0] isEqualToString:@"[al"]) {
        _albume = [arr[1] substringToIndex:len - 1];
    }
}

- (void)getCurrentLrcInLRCArray:(void (^)(NSArray *, int))handle atTime:(float)time
{
    if (!_lrcArray.count) {
        handle(nil,0);
    }
    int index = -2;
    for (int i=0; i < _lrcArray.count; i++) {
        float lrcTime = [_lrcArray[i] time];
        if (lrcTime > time) {
            index = i - 1;
            break;
        }
    }
    if (index == -1) {
        index = 0;
    } else if (index == -2) {
        index = (int)_lrcArray.count - 1;
    }
    handle(_lrcArray, index);
}

@end
