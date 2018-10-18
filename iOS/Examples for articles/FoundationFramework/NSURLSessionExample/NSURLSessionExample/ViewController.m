//
//  ViewController.m
//  NSURLSessionExample
//
//  Created by Nikolai Baklanov on 16/07/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "ViewController.h"
#import "ResultCell.h"
#import "ResultObject.h"
#import "DownloadTaskHandler.h"

#import <AVFoundation/AVFoundation.h>

@interface ViewController () <UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *searchField;
@property (weak, nonatomic) IBOutlet UITableView *resultsTable;
@property (weak, nonatomic) IBOutlet UIPickerView *entityPicker;

@property (strong, nonatomic) NSURLSession *searchSession;
@property (strong, nonatomic) NSURLSessionTask *searchTask;
@property (strong, nonatomic) NSURLComponents *searchComponents;

@property (strong, nonatomic) NSURLQueryItem *mediaItem;
@property (strong, nonatomic) NSURLQueryItem *termItem;
@property (strong, nonatomic) NSURLQueryItem *entityItem;

@property (strong, nonatomic) NSArray *entityArray;
@property (strong, nonatomic) NSMutableArray *resultsArray;

@property (strong, nonatomic) DownloadTaskHandler *sessionHandler;
@property (strong, nonatomic) NSURLSession *downloadSession;

@property (strong, nonatomic) AVAudioPlayer *player;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.entityArray = @[@"song", @"collection"];
    
    [self initSearchSession];
    [self initDownloadSession];
}

- (void)initDownloadSession
{
    self.sessionHandler = [DownloadTaskHandler new];
    
    NSURLSessionConfiguration *defaultCongigration = [NSURLSessionConfiguration defaultSessionConfiguration];
    self.downloadSession = [NSURLSession sessionWithConfiguration:defaultCongigration delegate:self.sessionHandler delegateQueue:nil];
}

- (void)initSearchSession
{
    NSURLSessionConfiguration *defaultCongigration = [NSURLSessionConfiguration defaultSessionConfiguration];
    self.searchSession = [NSURLSession sessionWithConfiguration:defaultCongigration];
    self.searchComponents = [NSURLComponents componentsWithString:@"https://itunes.apple.com/search"];
    
    self.mediaItem = [NSURLQueryItem queryItemWithName:@"media" value:@"music"];
    self.termItem = [NSURLQueryItem queryItemWithName:@"term" value:@""];
    self.entityItem = [NSURLQueryItem queryItemWithName:@"entity" value:@"song"];
}

- (IBAction)startSearch:(id)sender
{
    self.termItem = [NSURLQueryItem queryItemWithName:@"term" value:self.searchField.text];
    self.searchComponents.queryItems = @[self.mediaItem, self.termItem, self.entityItem];
    
    self.searchTask = [self.searchSession dataTaskWithURL:self.searchComponents.URL completionHandler:^(NSData *searchData, NSURLResponse *response, NSError *error) {
        
        if(error != nil) {
            [self showModalMessageWithText:error.localizedDescription];
        } else {
            [self parseResponse:searchData];
        }
        
    }];
    [self.searchTask resume];
}

- (IBAction)stopAll:(id)sender
{
    if(self.player != nil) {
        [self.player stop];
    }
}

- (void)showModalMessageWithText:(NSString *)text
{
    UIAlertController *alertController;
    UIAlertAction *okAction;
    
    alertController = [UIAlertController alertControllerWithTitle:@"Message"
                                                          message:text
                                                   preferredStyle:UIAlertControllerStyleAlert];
    
    okAction = [UIAlertAction actionWithTitle:@"Close"
                                        style:UIAlertActionStyleDefault
                                      handler:^(UIAlertAction *action){
        [alertController dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)parseResponse:(NSData *)response
{
    NSError *jsonParseError = nil;
    NSDictionary *parsedJSON = [NSJSONSerialization JSONObjectWithData:response options:kNilOptions error:&jsonParseError];
    if(jsonParseError != nil) {
        [self showModalMessageWithText:jsonParseError.localizedDescription];
    } else {
        
        NSString *jsonResultsKey = @"results";
        NSString *jsonResultsCountKey = @"resultCount";
        
        NSString *trackNameKey = @"trackName";
        NSString *collectionNameKey = @"collectionName";
        
        NSString *previewUrlKey = @"previewUrl";
        
        NSLog(@"%@", parsedJSON);
        
        if([parsedJSON valueForKey:jsonResultsKey]) {
            
            NSInteger count = [[parsedJSON valueForKey:jsonResultsCountKey] integerValue];
            if(count > 15) {
                count = 15;
            }
            
            if(self.resultsArray != nil) {
                [self.resultsArray removeAllObjects];
            } else {
                self.resultsArray = [NSMutableArray array];
            }
            
            NSArray *jsonEntites = [parsedJSON objectForKey:jsonResultsKey];
            for(int i = 0; i < count; i++) {
                
                ResultObject *currentObject = [ResultObject new];
                
                if([self.entityPicker selectedRowInComponent:0] == 0) {
                    currentObject.resultName = [[jsonEntites objectAtIndex:i] objectForKey:trackNameKey];
                    currentObject.resultUrl = [[jsonEntites objectAtIndex:i] objectForKey:previewUrlKey];
                } else {
                    currentObject.resultName = [[jsonEntites objectAtIndex:i] objectForKey:collectionNameKey];
                }
                [self.resultsArray addObject:currentObject];
            }
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.resultsTable reloadData];
            });
            
        } else {
            [self showModalMessageWithText:@"Нет резултатов!"];
        }
    }
}


#pragma - table view methods
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([self.entityPicker selectedRowInComponent:0] == 0) {
        
        ResultCell *cell = [self.resultsTable cellForRowAtIndexPath:indexPath];
        if(cell.downloaded) {
            
            NSURLComponents *fileUrlComponents = [[NSURLComponents alloc] init];
            [fileUrlComponents setPath:cell.mainLabel.text];
            [fileUrlComponents setScheme:@"file"];
            
            NSError *playbackError = nil;
            self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileUrlComponents.URL error:&playbackError];
            if(playbackError != nil) {
                [self showModalMessageWithText:playbackError.localizedDescription];
            }
            [self.player prepareToPlay];
            [self.player play];
            
        } else {
            
            ResultObject *resultObject = [self.resultsArray objectAtIndex:indexPath.row];
            NSURLSessionDownloadTask *downloadTask = [self.downloadSession downloadTaskWithURL:[NSURL URLWithString:resultObject.resultUrl]];
            
            [self.sessionHandler addTask:downloadTask forCell:cell];
            [downloadTask resume];
        }
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.resultsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ResultCell *cell = [self.resultsTable dequeueReusableCellWithIdentifier:@"ResultCell"];
    ResultObject *resultObject = [self.resultsArray objectAtIndex:indexPath.row];
    
    cell.mainLabel.text = resultObject.resultName;
    return cell;
}

#pragma mark - Picker methods
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.entityItem = [NSURLQueryItem queryItemWithName:@"entity" value:[self.entityArray objectAtIndex:row]];
}

- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.entityArray objectAtIndex:row];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.entityArray.count;
}

@end
