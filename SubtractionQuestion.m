//
//  SubtractionQuestion.m
//  Maths2
//
//  Created by Daniel Grosman on 2017-11-01.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    self.question = [NSString stringWithFormat:@" %ld - %ld = ?", self.randomNumber1, self.randomNumber2];
    self.answer = self.randomNumber1 - self.randomNumber2;
}

@end
