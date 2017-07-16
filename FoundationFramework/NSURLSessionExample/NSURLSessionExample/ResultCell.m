//
//  ResultCell.m
//  NSURLSessionExample
//
//  Created by Nikolai Baklanov on 16/07/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "ResultCell.h"

@implementation ResultCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.downloaded = NO;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
