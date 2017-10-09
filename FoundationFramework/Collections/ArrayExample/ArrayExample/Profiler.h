//
//  Profiler.h
//  ArrayExample
//
//  Created by Nikolai Baklanov on 08/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^EmptyBlock)();

@interface Profiler : NSObject

+ (NSTimeInterval)performBlockWithTime:(EmptyBlock)executingBlock;

@end
