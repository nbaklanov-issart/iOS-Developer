//
//  ResultsModel.m
//  ArrayExample
//
//  Created by Nikolai Baklanov on 19/08/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

#import "ResultsModel.h"

@implementation ResultsModel

+ (ResultsModel *)modelWithData:(NSString *)name
                         result:(NSTimeInterval)result;
{
    ResultsModel *data = [ResultsModel new];
    data.resultName = name;
    data.result = result;
    return data;
}

@end
