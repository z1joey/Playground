//
//  PermissionTest.m
//  Objective-C
//
//  Created by Yi Zhang on 29/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import "PermissionTest.h"
#import "ClassA.h"
#import "ClassB.h"

@implementation PermissionTest
+ (void)permissionTest {
    ClassA *classA = [[ClassA alloc] init];
    ClassB *classB = [[ClassB alloc] init];
    classA->x = 1;
    NSLog(@"%i", classA->x);
    
    // classB 可以修改y
    [classB print];

    // 没有权限
    //classA->z = 3.0;
    //z is private
    //NSLog(@"%e", classA->z);
}
@end
