//
//  main.m
//  Objective-C
//
//  Created by Yi Zhang on 29/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "方法/FractionTest.h"
#import "继承/FKTest.h"
#import "权限/PermissionTest.h"
#import "类别/NSStringTest.h"
#import "多态/FKPTest.h"
#import "判断/CheckTest.h"
#import "异常/FKEatableTest.h"
#import "异常/FKThrowTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //[FractionTest addTest];
        //[FractionTest sumTest];
        //[FKTest fkTest];
        //[PermissionTest permissionTest];
        //[NSStringTest testURL];
        //[FKPTest test];
        //[CheckTest test];
        //[FKEatableTest test];
        [FKThrowTest test];
    }
    return 0;
}
