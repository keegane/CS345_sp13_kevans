//
//  Game.h
//  Bowling Kata
//
//  Created by Guest User on 1/31/13.
//  Copyright (c) 2013 CS345. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject
-(void)rollWithPinCount: (int)pins;
-(int)score;
@end
