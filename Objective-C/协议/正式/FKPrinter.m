//
//  FKPrinter.m
//  Objective-C
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "FKPrinter.h"
#define MAX_CACHE_LINE 10

@implementation FKPrinter
{
    NSString *printData[MAX_CACHE_LINE];
    int dataNum;
}
- (void)output
{
    while (dataNum > 0) {
        NSLog(@"打印机使用%@打印：%@", self.printColor, printData[0]);
        dataNum--;
        for (int i = 0; i < dataNum; i++) {
            printData[i] = printData[i+1];
        }
    }
}
- (void)addData:(NSString *)msg
{
    if (dataNum >= MAX_CACHE_LINE)
    {
        NSLog(@"输出队列已满，添加失败");
    }
    else
    {
        printData[dataNum++] = msg;
    }
}
- (NSDate *)getProduceTime
{
    return [[NSDate alloc] init];
}
- (NSString *)printColor
{
    return @"红色";
}
@end
