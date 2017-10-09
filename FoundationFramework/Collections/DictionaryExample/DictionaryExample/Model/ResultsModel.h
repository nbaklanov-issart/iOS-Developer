//
//  ResultsModel.h
//  ArrayExample
//
//  Created by Nikolai Baklanov on 19/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResultsModel : NSObject

@property (nonatomic, strong) NSString *resultName;
@property (nonatomic, assign) NSTimeInterval result;

+ (ResultsModel *)modelWithData:(NSString *)name
                         result:(NSTimeInterval)result;

@end
