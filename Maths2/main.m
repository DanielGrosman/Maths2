//
//  main.m
//  Maths2
//
//  Created by Daniel Grosman on 2017-11-01.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while(gameOn){
            // creates an instance of the Question class called question. It runs the method generateRandomQuestion from the questionfactory
            Question *question = [questionFactory generateRandomQuestion];
            // adds the question to the the array questions in the questionManager
            [questionManager.questions addObject:question];
            // logs the question
            NSLog(@"\nWhat is the answer to: %@ \n", [question question]);
            
            
            NSString *inputAnswer = [InputHandler QandA];
            
            
            if ([inputAnswer isEqualToString:@"quit"]){
                gameOn = NO;
                continue;
            }
            
            
            else{
                NSInteger answer = [inputAnswer integerValue];
                
                
                if (answer == [question answer]){
                    NSLog(@"Right!");
                    [scoreKeeper incrementRight];
                }
                
                
                else{
                    NSLog(@"Wrong!");
                    [scoreKeeper incrementWrong];
                }
            }
            
            NSLog(@"%@", [scoreKeeper results]);
            NSLog(@"%@", [questionManager timeOutput:questionManager.questions]);
            
        }
    }
    return 0;
}

