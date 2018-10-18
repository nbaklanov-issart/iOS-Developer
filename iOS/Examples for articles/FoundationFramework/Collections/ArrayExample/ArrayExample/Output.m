//
//  Output.m
//  ArrayExample
//
//  Created by Nikolai Baklanov on 09/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "Output.h"

@interface Output ()

@property (nonatomic, strong) NSString *outputString;

@end

@implementation Output

- (void)clearString
{
    self.outputString = @"";
}

- (void)appendNewString:(NSString *)newString
{
    newString = [newString stringByAppendingString:@"\n"];
    self.outputString = [self.outputString stringByAppendingString:newString];
}

- (NSString *)getCurrentString
{
    return self.outputString;
}

@end
