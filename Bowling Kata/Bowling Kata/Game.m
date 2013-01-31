//
//  Game.m
//  Bowling Kata
//
//  Created by Guest User on 1/31/13.
//  Copyright (c) 2013 CS345. All rights reserved.
//

#import "Game.h"

@implementation Game{
    int score;
}

-(void)rollWithPinCount: (int)pins{
    score += pins;
    
}
-(int)score
{
    return score;
}

@end
