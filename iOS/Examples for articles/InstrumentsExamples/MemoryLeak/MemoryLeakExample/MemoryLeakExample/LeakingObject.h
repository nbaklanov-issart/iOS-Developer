//
//  LeakingObject.h
//  MemoryLeakExample
//
//  Created by Nikolay Baklanov on 05.03.2018.
//  Copyright © 2018 Nikolay Baklanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LeakingObject : NSObject

@property (strong, atomic) LeakingObject *chainedValue;

@end
