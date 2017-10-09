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
                    arrayResult:(NSTimeInterval)arrayResult
             mutableArrayResult:(NSTimeInterval)mutableArrayResult
{
    ResultsModel *data = [ResultsModel new];
    data.resultName = name;
    data.arrayResult = arrayResult;
    data.mutableArrayResult = mutableArrayResult;
    return data;
}

@end
