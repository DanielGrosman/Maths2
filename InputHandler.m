//
//  InputHandler.m
//  Maths2
//
//  Created by Daniel Grosman on 2017-11-01.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)QandA {
    
    char answerNumber[5];
    fgets(answerNumber, 5, stdin);
    NSString *inputAnswer = [NSString stringWithUTF8String:answerNumber];
    NSString *parsedInputAnswer = [inputAnswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return parsedInputAnswer;
}

@end
