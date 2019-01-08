//
//  AppDelegate.h
//  CoreDataTest
//
//  Created by Yi Zhang on 8/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

