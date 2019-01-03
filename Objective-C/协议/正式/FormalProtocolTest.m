//
//  FormalProtocolTest.m
//  Objective-C
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "FormalProtocolTest.h"
#import "FKPrinter.h"

@implementation FormalProtocolTest
+ (void)test {
    FKPrinter *printer = [[FKPrinter alloc] init];
    [printer addData:@"This is 1st Data"];
    [printer addData:@"This is 2nd Data"];
    [printer output];
    [printer addData:@"第一条数据"];
    [printer addData:@"第二条数据"];
    [printer output];
    
    NSObject<FKProductable> *p = [[FKPrinter alloc] init];
    NSLog(@"%@", p.getProduceTime);
    
    id<FKOutput> ot = [[FKPrinter alloc] init];
    [ot addData:@"111"];
    [ot addData:@"222"];
    [ot addData:@"333"];
    [ot output];
}
@end
