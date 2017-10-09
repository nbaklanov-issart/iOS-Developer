//
//  ComplicatedElement.h
//  ArrayExample
//
//  Created by Nikolai Baklanov on 08/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "SimpleElement.h"

@interface ComplicatedElement : SimpleElement

@property (nonatomic, strong) NSString *stringValue;

+ (ComplicatedElement *)randomComplicatedElement;

@end
