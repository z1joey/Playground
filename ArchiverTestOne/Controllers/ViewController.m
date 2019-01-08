//
//  ViewController.m
//  ArchiverTestOne
//
//  Created by Yi Zhang on 8/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Model *obj = [[Model alloc] init];
    obj.name = @"Joey";
    obj.address = @"jingjusi";
    obj.age  = 24;
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:obj requiringSecureCoding:NO error:nil];
    
    Model *getObj1 = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    // int类型数据无法读取
    NSLog(@"\nobj1 name:%@\nobj1 age:%d\nobj1 address:%@", getObj1.name, getObj1.age, getObj1.address);
    
    NSError *error;
    Model *getObj2 = [NSKeyedUnarchiver unarchivedObjectOfClass:[Model class] fromData:data error:&error];
    // 无法读取
    NSLog(@"\nerror: %@", error);
    NSLog(@"\nobj2 name:%@\nobj2 age:%d\nobj2 address:%@", getObj2.name, getObj2.age, getObj2.address);
    
//    NSString *homeDictionary = NSHomeDirectory();
//    NSString *homePath = [homeDictionary stringByAppendingPathComponent:@"atany.archiver"];
//
//    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:@"123" requiringSecureCoding:NO error:nil];
//    [data writeToFile:homePath atomically:YES];
//    NSLog(@"data: %@", [NSKeyedUnarchiver unarchiveObjectWithData:data]);
//    [NSKeyedArchiver archiveRootObject:@"456" toFile:homePath];
//    NSLog(@"file: %@", [NSKeyedUnarchiver unarchiveObjectWithFile:homePath]);
}

@end
