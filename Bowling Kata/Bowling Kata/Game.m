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
        if ([self isStrike:ballIndex])
        {
            score += 10 + [self strikeBonus:ballIndex];
            ++ballIndex;
        }
        else if ([self isSpare:ballIndex])
        {
            score += 10 + [self spareBonud:ballIndex];
        ballIndex +=2;
        }
        else {
            score += [self sumOfBallsInFrame:ballIndex];
            ballIndex+=2;
        }
    }
        
    return score;
    
}

-(BOOL)isStrike:(int)ballIndex{
    return rolls[ballIndex] ==10;
}

    -(BOOL)isSpare:(int)ballIndex{
        return rolls[ballIndex] + rolls[ballIndex + 1] ==10;
}

-(int)strikeBonus:(int)ballIndex {
    return rolls[ballIndex +1] + rolls[ballIndex +2];
}

-(int)spareBonud:(int)ballIndex {
    return rolls[ballIndex +2];
}

-(int)sumOfBallsInFrame:(int)ballIndex {
    return rolls[ballIndex] + rolls[ballIndex +1];
}

@end
