//
//  ViewController.m
//  ArrayExample
//
//  Created by Nikolai Baklanov on 07/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "ViewController.h"
#import "Profiler.h"
#import "SimpleElement.h"
#import "ComplicatedElement.h"
#import "ResultsModel.h"
#import "ResultCellTableViewCell.h"

@interface ViewController () 

@property (nonatomic, weak) IBOutlet UITableView *table;

@property (nonatomic, strong) NSMutableArray<ResultsModel *> *results;
@property (nonatomic, strong) SimpleElement *firstSimpleElement;
@property (nonatomic, strong) SimpleElement *secondSimpleElement;
@property (nonatomic, strong) SimpleElement *thirdSimpleElement;

@property (nonatomic, strong) ComplicatedElement *firstComplicatedElement;
@property (nonatomic, strong) ComplicatedElement *secondComplicatedElement;
@property (nonatomic, strong) ComplicatedElement *thirdComplicatedElement;

@end

@implementation ViewController

static NSInteger preferedCount = 100000;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.results = [NSMutableArray array];
    
    UINib *cellNib = [UINib nibWithNibName:@"ResultCellTableViewCell" bundle:nil];
    [self.table registerNib:cellNib forCellReuseIdentifier:@"ResultCell"];
    
    [self initDummyElements];
    
    [self arrayFiltering];
    [self arrayIteration];
    [self arrayNavigation];
    [self arrayModification];
    [self arrayCreation];
    
    
    
    [self.table reloadData];
}

- (void)initDummyElements
{
    self.firstSimpleElement = [[SimpleElement alloc] init];
    self.firstSimpleElement.numberProperty = 1;
    self.firstSimpleElement.boolProperty = YES;
    
    self.secondSimpleElement = [[SimpleElement alloc] init];
    self.secondSimpleElement.numberProperty = 2;
    self.secondSimpleElement.boolProperty = NO;
    
    self.thirdSimpleElement = [[SimpleElement alloc] init];
    self.thirdSimpleElement.numberProperty = 3;
    self.thirdSimpleElement.boolProperty = YES;
    
    self.firstComplicatedElement = [ComplicatedElement new];
    self.firstComplicatedElement.numberProperty = 1;
    self.firstComplicatedElement.boolProperty = YES;
    self.firstComplicatedElement.stringValue = @"first";
    
    self.secondComplicatedElement = [ComplicatedElement new];
    self.secondComplicatedElement.numberProperty = 2;
    self.secondComplicatedElement.boolProperty = NO;
    self.secondComplicatedElement.stringValue = @"second";
    
    self.thirdComplicatedElement = [ComplicatedElement new];
    self.thirdComplicatedElement.numberProperty = 3;
    self.thirdComplicatedElement.boolProperty = YES;
    self.thirdComplicatedElement.stringValue = @"third";
}

- (NSMutableArray *)generateRandomComplicatedArray:(NSInteger)length
{
    NSMutableArray *generatedArray = [NSMutableArray array];
    for (int i = 0; i < length; i++) {
        [generatedArray addObject:[ComplicatedElement randomComplicatedElement]];
    }
    return generatedArray;
}

- (NSMutableArray *)generateRandomStringArray:(NSInteger)length
{
    NSArray *names = [NSArray arrayWithObjects:@"MyName",
                                               @"HisName",
                                               @"Name",
                                               @"FirstName",
                                               @"LastName",
                                               @"OwnName",
                                               @"NotOwnedName",
                                               @"HName",
                                               @"sName",
                                               @"iName",
                                               @"HISName",
                                               @"DDDName",
                                               @"RRRName",
                                               @"QName",
                                               @"SName",
                                               @"NSName",
                                               @"BName",
                                               @"AName", nil];
    NSMutableArray *generatedArray = [NSMutableArray array];
    for (int i = 0; i < length; i++) {
        NSUInteger randomIndex = arc4random_uniform((int)names.count);
        [generatedArray addObject:[names objectAtIndex:randomIndex]];
    }
    return generatedArray;
}

- (void)arrayCreation
{
    NSTimeInterval mutableArrayResult;
    NSTimeInterval arrayResult;
    ResultsModel *resultData;
    
    arrayResult = [Profiler performBlockWithTime:^(void){
        [NSArray array];
    }];
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [NSMutableArray array];
    }];
    
    resultData = [ResultsModel modelWithData:@"Empty Array Creation"
                                 arrayResult:arrayResult
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    
    arrayResult = [Profiler performBlockWithTime:^(void){
        [NSArray arrayWithObjects:[SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement], nil];
    }];
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [NSMutableArray arrayWithObjects:[SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement],
         [SimpleElement randomSimpleElement], nil];
    }];
    
    resultData = [ResultsModel modelWithData:@"Array Creation With Precreated Simple Elements"
                                 arrayResult:arrayResult
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    
    arrayResult = [Profiler performBlockWithTime:^(void){
        [NSArray arrayWithObjects:[ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement], nil];
    }];
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [NSMutableArray arrayWithObjects:[ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement],
         [ComplicatedElement randomComplicatedElement], nil];
    }];
    
    resultData = [ResultsModel modelWithData:@"Array Creation With Precreated Complicated Elements"
                                 arrayResult:arrayResult
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    
    
    NSArray *sourceArray = [self generateRandomComplicatedArray:preferedCount];
    arrayResult = [Profiler performBlockWithTime:^(void){
        [NSArray arrayWithArray:sourceArray];
    }];
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [NSMutableArray arrayWithArray:sourceArray];
    }];
    
    resultData = [ResultsModel modelWithData:@"Array Creation With Precreated Array"
                                 arrayResult:arrayResult
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
}

- (void)arrayModification
{
    NSTimeInterval mutableArrayResult;
    ResultsModel *resultData;
    NSMutableArray *testArray = [NSMutableArray array];
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        for(int i = 0; i < preferedCount; i++) {
            [testArray addObject:[SimpleElement randomSimpleElement]];
        }
    }];
    resultData = [ResultsModel modelWithData:@"Adding X simple elements"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    [testArray removeAllObjects];
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        for(int i = 0; i < preferedCount; i++) {
            [testArray addObject:[ComplicatedElement randomComplicatedElement]];
        }
    }];
    resultData = [ResultsModel modelWithData:@"Adding X complicated elements"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    
    testArray = [self generateRandomComplicatedArray:preferedCount];
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray insertObject:[SimpleElement randomSimpleElement] atIndex:0];
    }];
    resultData = [ResultsModel modelWithData:@"Adding element at begining"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray addObject:[SimpleElement randomSimpleElement]];
    }];
    resultData = [ResultsModel modelWithData:@"Adding element at end"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    
    
    NSUInteger half = (NSUInteger)ceil(testArray.count / 2);
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray insertObject:[SimpleElement randomSimpleElement] atIndex:half];
    }];
    resultData = [ResultsModel modelWithData:@"Adding element at middle"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray removeLastObject];
    }];
    resultData = [ResultsModel modelWithData:@"Removing last object"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray removeObjectAtIndex:0];
    }];
    resultData = [ResultsModel modelWithData:@"Removing first object"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    half = (NSUInteger)ceil(testArray.count / 2);
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray removeObjectAtIndex:half];
    }];
    resultData = [ResultsModel modelWithData:@"Removing half object"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray replaceObjectAtIndex:half withObject:[ComplicatedElement randomComplicatedElement]];
    }];
    resultData = [ResultsModel modelWithData:@"Replacing half object"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
}

- (void)arrayNavigation
{
    NSTimeInterval mutableArrayResult;
    ResultsModel *resultData;
    NSMutableArray *testArray = [self generateRandomComplicatedArray:preferedCount];
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray firstObject];
    }];
    resultData = [ResultsModel modelWithData:@"Get first object by property"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray objectAtIndex:0];
    }];
    resultData = [ResultsModel modelWithData:@"Get first object by index"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray lastObject];
    }];
    resultData = [ResultsModel modelWithData:@"Get last object by property"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray objectAtIndex:testArray.count - 1];
    }];
    resultData = [ResultsModel modelWithData:@"Get last object by index"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    NSUInteger half = (NSUInteger)ceil(testArray.count / 2);
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray objectAtIndex:half];
    }];
    resultData = [ResultsModel modelWithData:@"Get half object by index"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    half = (NSUInteger)ceil(testArray.count / 2);
    ComplicatedElement *element = [testArray objectAtIndex:half];
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        [testArray indexOfObject:element];
    }];
    resultData = [ResultsModel modelWithData:@"Get index by object"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
}

- (void)arrayIteration
{
    NSTimeInterval mutableArrayResult;
    ResultsModel *resultData;
    NSMutableArray *testArray = [self generateRandomComplicatedArray:preferedCount];
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        
        NSUInteger count = testArray.count;
        for(int i = 0; i < count; i++) {
            [testArray objectAtIndex:i];
        }
    }];
    resultData = [ResultsModel modelWithData:@"Enumerate using cycle"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        NSEnumerator *testEnumerator = testArray.objectEnumerator;
        ComplicatedElement *element;
        while (element = [testEnumerator nextObject]) {
            
        }
    }];
    resultData = [ResultsModel modelWithData:@"Enumerate using enumeration"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        for(ComplicatedElement *element in testArray) {
        }
    }];
    resultData = [ResultsModel modelWithData:@"Enumerate using fast enumeration"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        
        void (^firstOption)(id obj, NSUInteger index, BOOL *stop) = ^void (id obj, NSUInteger index, BOOL *stop) {
        };
        
        [testArray enumerateObjectsUsingBlock:firstOption];
    }];
    resultData = [ResultsModel modelWithData:@"Enumerate using block enumeration"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
    
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        
        [testArray enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id obj, NSUInteger index, BOOL *stop){
            
        } ];
    }];
    resultData = [ResultsModel modelWithData:@"Enumerate concurent using block enumeration"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
}

- (void)arraySorting
{
    
}

- (void)arrayFiltering
{
    NSTimeInterval mutableArrayResult;
    ResultsModel *resultData;
    NSMutableArray *testArray = [self generateRandomStringArray:preferedCount];
    
    mutableArrayResult = [Profiler performBlockWithTime:^(void){
        
        NSPredicate *nPredicate = [NSPredicate predicateWithFormat:@"SELF beginswith[c] 'N'"];
        [testArray filteredArrayUsingPredicate:nPredicate];
    }];
    resultData = [ResultsModel modelWithData:@"Filtering strings"
                                 arrayResult:0
                          mutableArrayResult:mutableArrayResult];
    [self.results addObject:resultData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.results.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ResultCellTableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:@"ResultCell"];
    if (cell == nil) {
        cell = [ResultCellTableViewCell new];
    }
    
    ResultsModel *resultData = [self.results objectAtIndex:indexPath.row];
    [cell setResultName:resultData.resultName];
    [cell setArrayResult:resultData.arrayResult];
    [cell setMutableArrayResult:resultData.mutableArrayResult];
    
    return cell;
}

@end
