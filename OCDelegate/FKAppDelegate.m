//
//  FKAppDelegate.m
//  OCDelegate
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "FKAppDelegate.h"

@implementation FKAppDelegate

- (void)applicationWillFinishLaunching:(NSNotification *)notification
{
    self.window = [[NSWindow alloc] initWithContentRect:NSMakeRect(300, 300, 320, 200) styleMask:(NSWindowStyleMaskTitled | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskClosable) backing:NSBackingStoreBuffered defer:NO];
    self.window.title = @"Delegate Demo";
    
    NSTextField *label = [[NSTextField alloc] initWithFrame:NSMakeRect(60, 120, 200, 60)];
    label.selectable = YES;
    label.bezeled = YES;
    label.drawsBackground = YES;
    label.stringValue = @"This is a string in FKAPPDelegate";
    
    NSButton *button = [[NSButton alloc] initWithFrame:NSMakeRect(120, 40, 80, 30)];
    button.title = @"确定";
    button.bezelStyle = NSRoundedBezelStyle;
    button.bounds = NSMakeRect(120, 40, 80, 30);
    
    [self.window.contentView addSubview:label];
    [self.window.contentView addSubview:button];
}

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
    [self.window makeKeyAndOrderFront:self];
}

@end
