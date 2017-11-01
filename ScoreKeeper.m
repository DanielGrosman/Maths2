//
//  ScoreKeeper.m
//  Maths2
//
//  Created by Daniel Grosman on 2017-11-01.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper


- (instancetype)init
{
    self = [super init];
    if (self) {
        _numOfRights = 0;
        _numOfWrongs = 0;
    }
    return self;
}


-(void) incrementRight{
    self.numOfRights++;
}

-(void) incrementWrong {
    self.numOfWrongs++;
}


-(NSString*)results{
    float grade = (self.numOfRights)*100/(self.numOfWrongs + self.numOfRights);
    NSString *results = [NSString stringWithFormat:@"Score: %d right, %d wrong ---- %f%%", self.numOfRights, self.numOfWrongs, grade];
    
    return results;
}


@end
