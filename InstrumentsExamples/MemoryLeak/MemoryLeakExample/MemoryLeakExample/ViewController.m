//
//  ViewController.m
//  MemoryLeakExample
//
//  Created by Nikolay Baklanov on 05.03.2018.
//  Copyright © 2018 Nikolay Baklanov. All rights reserved.
//

#import "ViewController.h"
#import "LeakingObject.h"

@interface ViewController ()

@property (strong, atomic) LeakingObject *objectProperty;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)onLeakTap:(UIButton *)sender
{
    self.objectProperty = [LeakingObject new];
    self.objectProperty.chainedValue = self.objectProperty;
}

@end
