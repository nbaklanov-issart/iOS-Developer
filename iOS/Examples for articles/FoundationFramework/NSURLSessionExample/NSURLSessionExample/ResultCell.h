//
//  ResultCell.h
//  NSURLSessionExample
//
//  Created by Nikolai Baklanov on 16/07/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultCell : UITableViewCell

@property (assign, nonatomic) BOOL downloaded;
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
@property (weak, nonatomic) IBOutlet UILabel *mainStatus;

@end
