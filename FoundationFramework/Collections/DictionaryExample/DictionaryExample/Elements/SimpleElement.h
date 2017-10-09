//
//  SimpleElement.h
//  ArrayExample
//
//  Created by Nikolai Baklanov on 08/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleElement : NSObject

@property (nonatomic, assign) NSInteger numberProperty;
@property (nonatomic, assign) BOOL boolProperty;

+ (SimpleElement *)randomSimpleElement;

@end
