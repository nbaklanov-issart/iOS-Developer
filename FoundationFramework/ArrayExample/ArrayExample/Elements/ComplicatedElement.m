//
//  ComplicatedElement.m
//  ArrayExample
//
//  Created by Nikolai Baklanov on 08/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "ComplicatedElement.h"

@implementation ComplicatedElement

+ (ComplicatedElement *)randomComplicatedElement
{
    ComplicatedElement *randomElement = [ComplicatedElement new];
    randomElement.boolProperty = (arc4random_uniform(1) > 0);
    randomElement.numberProperty = arc4random_uniform(INT_MAX);
    randomElement.stringValue = [NSString stringWithFormat:@"%d", arc4random_uniform(INT_MAX)];
    return randomElement;
}

@end
