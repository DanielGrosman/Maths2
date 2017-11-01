//
//  ScoreKeeper.h
//  Maths2
//
//  Created by Daniel Grosman on 2017-11-01.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic,assign) int numOfRights;
@property (nonatomic, assign) int numOfWrongs;

-(void)incrementRight;
-(void)incrementWrong;
-(NSString*) results;

@end
