//
//  SimpleElement.m
//  ArrayExample
//
//  Created by Nikolai Baklanov on 08/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "SimpleElement.h"

@implementation SimpleElement

+ (SimpleElement *)randomSimpleElement
{
    SimpleElement *randomElement = [SimpleElement new];
    randomElement.boolProperty = (arc4random_uniform(1) > 0);
    randomElement.numberProperty = arc4random_uniform(INT_MAX);
    return randomElement;
}

@end
