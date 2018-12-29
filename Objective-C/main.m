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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //[FractionTest addTest];
        //[FractionTest sumTest];
        //[FKTest fkTest];
        
        /*id idTest;
        FKTest *regularTest = [[FKTest alloc] init];
        idTest = regularTest;
        [idTest print];*/
        
        //[PermissionTest permissionTest];
        [NSStringTest testURL];
    }
    return 0;
}
