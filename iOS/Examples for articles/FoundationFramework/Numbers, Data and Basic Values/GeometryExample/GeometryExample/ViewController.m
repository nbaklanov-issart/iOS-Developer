//
//  ViewController.m
//  GeometryExample
//
//  Created by Nikolai Baklanov on 13/10/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    [self pointTest];
    [self sizeTest];
    [self rectTest];
    [self rangeTest];
}

- (void)rangeTest
{
    NSString *testString = @"MyRangeTestString";
    NSRange testRange = [testString rangeOfString:@"My"];
    NSLog(@"test range for string : %@", NSStringFromRange(testRange));
    
    NSArray *array = @[@"a", @"b", @"c", @"d"];
    NSArray *subarray = [array subarrayWithRange:NSMakeRange(1, 2)];
    NSLog(@"subarray : %@", subarray);
}

- (void)rectTest
{
    CGRect rawRect;
    NSLog(@"Raw Test Rect : %@", NSStringFromCGRect(rawRect));
    
    CGRect initRect = CGRectMake(4, 5, 34, 34);
    NSLog(@"Init Test Rect : %@", NSStringFromCGRect(initRect));
    
    initRect.origin.x = 7;
    initRect.origin.y = 15;
    
    initRect.size.width = 40;
    initRect.size.height = 40;
    NSLog(@"Change Test Rect : %@", NSStringFromCGRect(initRect));
    
    CGRect infinitiRect = CGRectInfinite;
    NSLog(@"infinite Test Rect : %@", NSStringFromCGRect(infinitiRect));
    
    CGRect firstRect = CGRectMake(0, 0, 10, 10);
    CGRect secondRect = CGRectMake(30, 30, 10, 10);
    CGRect testNullRect = CGRectIntersection(firstRect, secondRect);
    
    NSLog(@"Null Test Rect : %@", NSStringFromCGRect(testNullRect));
    if (CGRectIsNull(testNullRect)) {
        NSLog(@"Null rect success");
    } else {
        NSLog(@"Null rect fail");
    }
}

- (void)sizeTest
{
    CGSize rawSize;
    NSLog(@"Raw Test Size : %@", NSStringFromCGSize(rawSize));
    
    CGSize testSize = CGSizeMake(34.5f, 55.0f);
    NSLog(@"Test Size : %@", NSStringFromCGSize(testSize));
    
    CGSize firstSize = CGSizeMake(55, 45);
    CGSize secondSize = firstSize;
    CGSizeEqualToSize(firstSize, secondSize);
    NSLog(@"Size Equal: %d", CGSizeEqualToSize(firstSize, secondSize));
    
    CGSize fromStringSize = CGSizeFromString(NSStringFromCGSize(CGSizeZero));
    NSLog(@"Size from string : %@", NSStringFromCGSize(fromStringSize));
}

- (void)pointTest
{
    CGPoint rawTestPoint;
    NSLog(@"Raw Test Point : %@", NSStringFromCGPoint(rawTestPoint));
    
    CGPoint testPoint = CGPointMake(0, 0);
    NSLog(@"Test Point : %@", NSStringFromCGPoint(testPoint));
    
    testPoint.x = 4;
    testPoint.y = 56;
    
    CGPoint secondTestPoint = testPoint;
    CGPointEqualToPoint(testPoint, secondTestPoint);
    NSLog(@"Points Equal: %d", CGPointEqualToPoint(testPoint, secondTestPoint));
    
    CGPoint fromStringPoint = CGPointFromString(@"{45.45,55.33}");
    NSLog(@"Point From String: %@", NSStringFromCGPoint(fromStringPoint));
    
    NSDictionary *pointRepresentation = CFBridgingRelease(CGPointCreateDictionaryRepresentation(CGPointZero));
    NSLog(@"Dictionary : %@", pointRepresentation);
}

@end
