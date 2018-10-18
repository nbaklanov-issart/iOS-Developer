//
//  Output.h
//  ArrayExample
//
//  Created by Nikolai Baklanov on 09/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Output : NSObject

- (void)clearString;
- (void)appendNewString:(NSString *)newString;
- (NSString *)getCurrentString;

@end
