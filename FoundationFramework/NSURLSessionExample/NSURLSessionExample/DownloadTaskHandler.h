//
//  DownloadTaskHandler.h
//  NSURLSessionExample
//
//  Created by Nikolai Baklanov on 16/07/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ResultCell.h"

@interface DownloadTaskHandler : NSObject <NSURLSessionDelegate, NSURLSessionTaskDelegate>

- (void)addTask:(NSURLSessionDownloadTask *)task forCell:(ResultCell *)cell;

@end
