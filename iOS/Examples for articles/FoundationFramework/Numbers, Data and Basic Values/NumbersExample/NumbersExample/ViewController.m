//
//  ViewController.m
//  NumbersExample
//
//  Created by Nikolai Baklanov on 10/10/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self numbersSize];
    [self numberComparison];
    [self scalarValues];
    [self decimalOperations];
    [self numberFormating];
}

- (void)numberFormating
{
    NSNumberFormatter *formatter = [NSNumberFormatter new];
    formatter.numberStyle = NSNumberFormatterSpellOutStyle;
    
    NSNumber *example = [formatter numberFromString:@"5.456"];
    if (example != nil) {
        NSLog(@"Example spell out: %@", [formatter stringFromNumber:example]);
        
        formatter.locale = [NSLocale localeWithLocaleIdentifier:@"ja_JP"];
        formatter.usesSignificantDigits = YES;
        formatter.maximumIntegerDigits = 15;
        formatter.minimumIntegerDigits = 3;
        formatter.maximumFractionDigits = 4;
        formatter.minimumFractionDigits = 1;
        formatter.numberStyle = NSNumberFormatterCurrencyPluralStyle;
        NSLog(@"Example: %@", [formatter stringFromNumber:example]);
    }
}

- (void)scalarValues
{
    NSNumber *floatNumber = [NSNumber numberWithFloat:4.5f];
    NSNumber *intNumber = [NSNumber numberWithInteger:-5];
    
    NSNumber *symbolFloat = @9.5f;
    NSNumber *symbolInt = @15;
    
    NSNumber *boolAlloc = [[NSNumber alloc] initWithBool:YES];
    NSNumber *charAlloc = [[NSNumber alloc] initWithChar:'c'];
    
    float floatFromInt = [intNumber floatValue];
    NSLog(@"Float from int : %f", floatFromInt);

    NSNumber *bigFloat = @(DBL_MAX);
    NSLog(@"float : %f. int : %lu", [bigFloat floatValue], (long)[bigFloat integerValue]);
}

- (void)decimalOperations
{
    NSDecimalNumber *decimalFromFloat = [[NSDecimalNumber alloc] initWithFloat:65.65f];
    NSDecimalNumber *decimalFromInt = [[NSDecimalNumber alloc] initWithInt:65];
    
    NSDecimalNumber *decimalTotal = [decimalFromFloat decimalNumberByAdding:decimalFromInt];
    NSLog(@"Decimal total : %@", decimalTotal);
}

- (void)numberComparison
{
    NSInteger intTest = -4;
    NSUInteger uintTest = 4;
    
    if (intTest == uintTest) {
        NSLog(@"Numbers are qual");
    } else {
        NSLog(@"Numbers are not qual");
    }
    
    if (intTest > uintTest) {
        NSLog(@"Int Larger");
    } else if (intTest < uintTest) {
        NSLog(@"UInt Larger");
    } else {
        NSLog(@"Nothing goes");
    }
}

- (void)numbersSize
{
    NSInteger intTest = 4;
    NSLog(@"Int Size : %lu", sizeof(intTest));
    
    NSUInteger uintTest = -4;
    NSLog(@"Int Size : %lu", sizeof(uintTest));
}

@end
