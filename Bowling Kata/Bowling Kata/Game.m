//
//  Game.m
//  Bowling Kata
//
//  Created by Guest User on 1/31/13.
//  Copyright (c) 2013 CS345. All rights reserved.
//

#import "Game.h"

@implementation Game{
    int rolls[21];
    int currentRoll;
}

-(void)rollWithPinCount: (int)pins{
    rolls[currentRoll++] = pins;
    
}
-(int)score
{
    int score = 0;
    int ballIndex = 0;
    for (int frame = 0;frame < 10; ++frame)
    {
        if (rolls[ballIndex] + rolls[ballIndex + 1] == 10)
        {
            score += 10 + rolls[ballIndex + 2];
        ballIndex +=2;
        }
        else {
            score += rolls[ballIndex] + rolls[ballIndex+1];
            ballIndex+=2;
        }
    }
        
    return score;
}

@end
