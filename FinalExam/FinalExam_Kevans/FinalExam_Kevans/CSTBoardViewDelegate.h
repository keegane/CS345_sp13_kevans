//
//  CSTBoardViewDelegate.h
//  FinalExam_Kevans
//
//  Created by Keegan Evans on 5/9/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CSTBoardViewDelegate <NSObject>
-(BOOL) isLegalFor:(NSString*) playerColor
         toMoveAtX:(NSUInteger) x
              andY:(NSUInteger) y;
-(void) executeMoveBy:(NSString*) playerColor
                  atX:(NSUInteger) x
                 andY:(NSUInteger) y;
-(NSString*) getPlayerColorAtX:(NSUInteger) x
                          andY:(NSUInteger) y;
@end
