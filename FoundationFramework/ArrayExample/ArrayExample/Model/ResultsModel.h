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
@property (nonatomic, assign) NSTimeInterval arrayResult;
@property (nonatomic, assign) NSTimeInterval mutableArrayResult;

+ (ResultsModel *)modelWithData:(NSString *)name
                    arrayResult:(NSTimeInterval)arrayResult
             mutableArrayResult:(NSTimeInterval)mutableArrayResult;

@end
