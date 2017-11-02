//
//  QuestionManager.m
//  Maths2
//
//  Created by Daniel Grosman on 2017-11-01.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *) timeOutput:(NSMutableArray*) questions {
    // sets the time to 0 to begin with
    NSTimeInterval totalTime = 0;
    // for every question that gets added to the srray, add the answerTime of that question to the totalTime
    for (Question* question in questions) {
        totalTime += question.answerTime;
    }
    
    NSString *totalTimeOutput = [NSString stringWithFormat:@"total time: %fs, average time: %fs", totalTime,totalTime/[questions count]];
    return totalTimeOutput;
}

@end
