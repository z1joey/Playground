//
//  ViewController.m
//  SQLiteTest
//
//  Created by Yi Zhang on 8/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "ViewController.h"
#import <sqlite3.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"sqlite"];
    sqlite3 *sqlite;
    int result = sqlite3_open([path cStringUsingEncoding:NSUTF8StringEncoding], &sqlite);
    if (result==SQLITE_OK) {
        NSLog(@"打开数据库成功");
    } else {
        NSLog(@"打开数据库失败");
    }
    
    char *error;
    NSString *sqlStr = @"create table Class(num integer,name text)";
    result = sqlite3_exec(sqlite, [sqlStr cStringUsingEncoding:NSUTF8StringEncoding], NULL, NULL, &error);
    // 0: 操作成功
    NSLog(@"%d:%s", result, error);
}


@end
