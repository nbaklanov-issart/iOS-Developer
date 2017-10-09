//
//  ViewController.m
//  DictionaryExample
//
//  Created by Nikolai Baklanov on 22/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "ViewController.h"
#import "ResultsModel.h"
#import "ResultCellTableViewCell.h"
#import "ComplicatedElement.h"
#import "SimpleElement.h"
#import "Profiler.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITableView *table;

@property (nonatomic, strong) NSMutableArray<ResultsModel *> *results;
@property (strong, nonatomic) NSMutableDictionary<NSString *, ComplicatedElement *> *testDictTyped;

@end

@implementation ViewController

static NSInteger preferedCount = 500000;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINib *cellNib = [UINib nibWithNibName:@"ResultCellTableViewCell" bundle:nil];
    [self.table registerNib:cellNib forCellReuseIdentifier:@"ResultCell"];
    self.results = [NSMutableArray array];
    
    [self dictionaryIteration];
    [self customKeys];
    [self accesingElements];
    
    [self.table reloadData];
}

- (NSMutableDictionary *)createDictionaryWithBaseKeys:(NSUInteger)capacity
{
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    for (int i = 0; i < capacity; i++) {
        [dictionary setObject:[SimpleElement randomSimpleElement] forKey:[NSString stringWithFormat:@"%d", i]];
    }
    return dictionary;
}

- (NSMutableDictionary *)createDictionaryWithBaseKeysNotUniq:(NSUInteger)capacity
{
    int index = 0;
    SimpleElement *simple = [SimpleElement randomSimpleElement];
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    
    for (int i = 0; i < capacity; i++) {
        [dictionary setObject:simple forKey:[NSString stringWithFormat:@"%d", i]];
        index++;
        if (index == 100 ||index == 200 ||index == 300) {
            simple = [SimpleElement randomSimpleElement];
        }
    }
    return dictionary;
}

- (NSMutableDictionary *)createDictionaryWithComplicatedKeys:(NSUInteger)capacity
{
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    for (int i = 0; i < capacity; i++) {
        [dictionary setObject:[SimpleElement randomSimpleElement] forKey:[ComplicatedElement randomComplicatedElement]];
    }
    return dictionary;
}

- (void)dictionaryIteration
{
    NSTimeInterval testDictionaryResult;
    ResultsModel *resultData;
    NSMutableDictionary *testDictionary = [self createDictionaryWithBaseKeys:preferedCount];
    
    NSArray *keys = [testDictionary allKeys];
    testDictionaryResult = [Profiler performBlockWithTime:^(void){
        for(NSString *key in keys) {
            
        }
    }];
    resultData = [ResultsModel modelWithData:@"Enumerate using cycle keys"
                                      result:testDictionaryResult];
    [self.results addObject:resultData];
    
    
    NSArray *values = [testDictionary allValues];
    testDictionaryResult = [Profiler performBlockWithTime:^(void){
        for(id value in values) {
            
        }
    }];
    resultData = [ResultsModel modelWithData:@"Enumerate using cycle values"
                                      result:testDictionaryResult];
    [self.results addObject:resultData];
    
    
    
    testDictionaryResult = [Profiler performBlockWithTime:^(void){
        NSString *key;
        for(key in testDictionary) {
            
        }
    }];
    resultData = [ResultsModel modelWithData:@"Enumerate using fast enumeration"
                                      result:testDictionaryResult];
    [self.results addObject:resultData];
    
    void (^firstOption)(NSString* key, id value, BOOL *stop) = ^void (NSString* key, id value, BOOL *stop) {
    };
    testDictionaryResult = [Profiler performBlockWithTime:^(void){
        
        
        
        [testDictionary enumerateKeysAndObjectsUsingBlock:firstOption];
    }];
    resultData = [ResultsModel modelWithData:@"Enumerate using block enumeration"
                                      result:testDictionaryResult];
    [self.results addObject:resultData];
    
    
    
    testDictionaryResult = [Profiler performBlockWithTime:^(void){
        
        NSString *key;
        NSEnumerator *keyEnumerator = [testDictionary keyEnumerator];
        while (key = [keyEnumerator nextObject]) {
        }
    }];
    resultData = [ResultsModel modelWithData:@"Enumerate enumerator"
                                      result:testDictionaryResult];
    [self.results addObject:resultData];
}

- (void)accesingElements
{
    NSTimeInterval resultTime;
    ResultsModel *resultData;
    NSMutableDictionary *testDefaultDictionary = [self createDictionaryWithBaseKeys:preferedCount];
    
    resultTime = [Profiler performBlockWithTime:^(void){
        NSString *key = [NSString stringWithFormat:@"%d", 10];
        [testDefaultDictionary objectForKey:key];
    }];
    resultData = [ResultsModel modelWithData:@"Object For Key"
                                      result:resultTime];
    [self.results addObject:resultData];
    
    resultTime = [Profiler performBlockWithTime:^(void){
        NSString *key = [NSString stringWithFormat:@"%d", 10];
        [testDefaultDictionary valueForKey:key];
    }];
    resultData = [ResultsModel modelWithData:@"Value For Key"
                                      result:resultTime];
    [self.results addObject:resultData];
    
    resultTime = [Profiler performBlockWithTime:^(void){
        NSString *key = [NSString stringWithFormat:@"%d", 10];
        testDefaultDictionary[key];
    }];
    resultData = [ResultsModel modelWithData:@"Subscripting"
                                      result:resultTime];
    [self.results addObject:resultData];
    
    testDefaultDictionary = [self createDictionaryWithBaseKeysNotUniq:preferedCount];
    NSString *key = [NSString stringWithFormat:@"%d", 1];
    SimpleElement *value = [testDefaultDictionary objectForKey:key];
    resultTime = [Profiler performBlockWithTime:^(void){
        [testDefaultDictionary allKeysForObject:value];
    }];
    resultData = [ResultsModel modelWithData:@"all keys for object"
                                      result:resultTime];
    [self.results addObject:resultData];
}

- (void)customKeys
{
    NSTimeInterval resultTime;
    ResultsModel *resultData;
    NSMutableDictionary *testDictionary = [self createDictionaryWithBaseKeys:preferedCount];
    
    resultTime = [Profiler performBlockWithTime:^(void){
        for(NSString *key in testDictionary) {
            [testDictionary objectForKey:key];
        }
    }];
    resultData = [ResultsModel modelWithData:@"Cocoa class keys"
                                      result:resultTime];
    [self.results addObject:resultData];
    
    testDictionary = [self createDictionaryWithComplicatedKeys:preferedCount];
    resultTime = [Profiler performBlockWithTime:^(void){
        for(NSString *key in testDictionary) {
            [testDictionary objectForKey:key];
        }
    }];
    resultData = [ResultsModel modelWithData:@"Custom class keys"
                                      result:resultTime];
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
    [cell setResult:resultData.result];
    
    return cell;
}


@end
