//
//  QuestionFactory.h
//  Maths2
//
//  Created by Daniel Grosman on 2017-11-01.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

// defines a method of the class Question (need to import the question class)
- (Question *) generateRandomQuestion;

@end
