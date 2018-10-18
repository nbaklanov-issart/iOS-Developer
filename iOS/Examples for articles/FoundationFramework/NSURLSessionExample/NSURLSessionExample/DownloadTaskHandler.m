//
//  DownloadTaskHandler.m
//  NSURLSessionExample
//
//  Created by Nikolai Baklanov on 16/07/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "DownloadTaskHandler.h"

@interface DownloadTaskHandler ()

@property (strong, nonatomic) NSMutableDictionary *tasks;

@end

@implementation DownloadTaskHandler

-(id)init
{
    self = [super init];
    if(self) {
        self.tasks = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)URLSession:(NSURLSession *)session didBecomeInvalidWithError:(nullable NSError *)error
{
    NSLog(@"Error with text : %@", error.localizedDescription);
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
didFinishDownloadingToURL:(NSURL *)location
{
    ResultCell *cell = [self.tasks objectForKey:downloadTask];
    
    NSString *fileName = [NSString stringWithFormat:@"%@.m4a", cell.mainLabel.text];
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [path objectAtIndex:0];
    
    NSString *filePath = [documentDirectory stringByAppendingPathComponent:fileName];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if([fileManager fileExistsAtPath:filePath] == YES) {
        [fileManager removeItemAtPath:filePath error:nil];
    }
    
    NSURLComponents *fileUrlComponents = [[NSURLComponents alloc] init];
    [fileUrlComponents setPath:filePath];
    [fileUrlComponents setScheme:@"file"];
    
    
    NSError *copyFileError = nil;
    if([fileManager moveItemAtURL:location toURL:fileUrlComponents.URL error:&copyFileError]) {
        
        dispatch_async(dispatch_get_main_queue(), ^{
        
            cell.mainLabel.text = filePath;
            cell.mainStatus.text = @"DOWNLOADED";
            cell.downloaded = YES;
        });
        
    } else {
        
        dispatch_async(dispatch_get_main_queue(), ^{
            cell.mainStatus.text = @"FAIL TO COPY";
        });
    }
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
      didWriteData:(int64_t)bytesWritten
 totalBytesWritten:(int64_t)totalBytesWritten
totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite
{
    dispatch_async(dispatch_get_main_queue(), ^{
        ResultCell *cell = [self.tasks objectForKey:downloadTask];
        cell.mainStatus.text = [NSString stringWithFormat:@"Downloaded : %lld from %lld", totalBytesWritten, totalBytesExpectedToWrite];

    });
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task
didCompleteWithError:(nullable NSError *)error
{
    if(error != nil) {
        NSLog(@"Error in task : %@", error.localizedDescription);
    }
}

- (void)addTask:(NSURLSessionDownloadTask *)task forCell:(ResultCell *)cell
{
    [self.tasks setObject:cell forKey:task];
}



@end
