//
//  ResultCellTableViewCell.m
//  ArrayExample
//
//  Created by Nikolai Baklanov on 09/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "ResultCellTableViewCell.h"

@interface ResultCellTableViewCell ()

@property (nonatomic, weak) IBOutlet UILabel *resultNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *arrayResultLabel;

@end

@implementation ResultCellTableViewCell

- (void)setResultName:(NSString*)name
{
    self.resultNameLabel.text = name;
}

- (void)setResult:(NSTimeInterval)value
{
    self.arrayResultLabel.text = [NSString stringWithFormat:@"%f", value];
}

@end
