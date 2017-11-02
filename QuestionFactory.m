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
    
    // selects a random number between 0 and 3 and assigns it to randomIndex
    int randomIndex = arc4random_uniform(4);
    
    // takes the value in the array that corresponds to the randomIndex number and asssigns that value to randomQuestionType (e.g. if the randomIndex # is 1, this randomQuestionType string will equal 'SubtractionQuestion'
    NSString *randomQuestionType = questionSubclassNames [randomIndex];
    
    // The NSClassFromString takes the string randomQuestionType and converts it into a class name. Now we can initiate an instance of the class Question called randomQuestion.
    Question *randomQuestion = [[NSClassFromString(randomQuestionType) alloc] init];
    // when called, this method will choose a class to call, held in the instance of Question called randomQUestion
    return randomQuestion;
}

@end
