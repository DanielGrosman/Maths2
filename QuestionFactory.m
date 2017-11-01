//
//  QuestionFactory.m
//  Maths2
//
//  Created by Daniel Grosman on 2017-11-01.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "QuestionFactory.h"


@implementation QuestionFactory


- (Question *) generateRandomQuestion {
    NSArray *questionSubclassNames = @[@"AdditionQuestion",@"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    
    int randomIndex = arc4random_uniform(4);
    NSString *randomQuestionType = questionSubclassNames [randomIndex];
    Question *randomQuestion = [[NSClassFromString(randomQuestionType) alloc] init];
    return randomQuestion;
}

@end
