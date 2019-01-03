//
//  main.m
//  OCDelegate
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FKAppDelegate.h"

// 失败
int main(int argc, const char * argv[]) {
    FKAppDelegate *delegate = [[FKAppDelegate alloc] init];
    NSApplication *app = [NSApplication sharedApplication];
    app.delegate = delegate;
    return NSApplicationMain(argc, argv);
}
