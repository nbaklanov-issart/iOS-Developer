//
//  ResultCellTableViewCell.h
//  ArrayExample
//
//  Created by Nikolai Baklanov on 09/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultCellTableViewCell : UITableViewCell

- (void)setResultName:(NSString*)name;
- (void)setArrayResult:(NSTimeInterval)value;
- (void)setMutableArrayResult:(NSTimeInterval)value;

@end
