// *****I only name it this because I messed up and edited the models Document.
//  CSTDontNameDocument.h
//  FinalExam_Kevans
//
//  Created by Keegan Evans on 5/9/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//


#import <Cocoa/Cocoa.h>
#import "CSTBoardViewDelegate.h"
#import "CSTBoardView.h"

@interface CSTDontNameDocument : NSDocument <CSTBoardViewDelegate>

@property (weak) IBOutlet NSTextField *whiteCounter;
@property (weak) IBOutlet NSTextField *blackCounter;
@property (weak) IBOutlet CSTBoardView *ticTacToeBoard;

-(void)popupGameOverAlertWithWinner:(NSString*) winnerName;
@end
