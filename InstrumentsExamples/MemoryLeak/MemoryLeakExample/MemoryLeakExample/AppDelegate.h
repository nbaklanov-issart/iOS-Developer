//
//  AppDelegate.h
//  MemoryLeakExample
//
//  Created by Nikolay Baklanov on 05.03.2018.
//  Copyright © 2018 Nikolay Baklanov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

