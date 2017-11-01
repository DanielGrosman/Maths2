//
//  Question.m
//  Maths2
//
//  Created by Daniel Grosman on 2017-11-01.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _randomNumber1 = arc4random_uniform(91)+10;
        _randomNumber2 = arc4random_uniform(91)+10;
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime {
    NSTimeInterval answerTime;
    answerTime = [self.endTime timeIntervalSinceDate:self.startTime];
    return answerTime;
}

- (void) generateQuestion{
    
}


//- (NSString *) setQuestion {
//   self.question = [NSString stringWithFormat:@" %ld + %ld = ?", self.randomNumber1, self.randomNumber2];
//    return self.question;
//}
//
//- (NSInteger) setAnswer {
//   self.answer = self.randomNumber1 + self.randomNumber2;
//    return self.answer;
//}

@end

