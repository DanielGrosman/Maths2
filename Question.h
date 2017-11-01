//
//  Question.h
//  Maths2
//
//  Created by Daniel Grosman on 2017-11-01.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) NSDate  *startTime;
@property (nonatomic, strong) NSDate  *endTime;
@property (nonatomic, assign) NSInteger randomNumber1;
@property (nonatomic, assign) NSInteger randomNumber2;

- (NSTimeInterval) answerTime;
- (void) generateQuestion;



@end

