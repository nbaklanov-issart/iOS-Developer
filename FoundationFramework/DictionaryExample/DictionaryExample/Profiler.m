//
//  Profiler.m
//  ArrayExample
//
//  Created by Nikolai Baklanov on 08/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "Profiler.h"

@implementation Profiler

+ (NSTimeInterval)performBlockWithTime:(EmptyBlock)executingBlock
{
    NSDate *startDate = [NSDate new];
    executingBlock();
    NSDate *endDate = [NSDate new];
    NSTimeInterval interval = [endDate timeIntervalSinceDate:startDate];
    
    return interval;
}

@end
