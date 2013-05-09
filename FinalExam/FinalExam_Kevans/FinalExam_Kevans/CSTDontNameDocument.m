//
//  CSTDontNameDocument.m
//  FinalExam_Kevans
//
//  Created by Keegan Evans on 5/9/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import "CSTDontNameDocument.h"
#import "CSTInterfaceGameModel.h"
#import "CSTInterfaceMove.h"
#import "CSTMove.h"

@implementation CSTDontNameDocument
{
    id<CSTInterfaceGameModel> _myModel;
}
- (id)init
{
    self = [super init];
    if (self) {
        //_myModel = [[CSTLocation alloc] init];
        
        [(id)_myModel addObserver: self
                       forKeyPath:@"gameOverState"
                          options:(NSKeyValueObservingOptionNew |
                                   NSKeyValueObservingOptionOld)
                          context:NULL];
    }
    return self;
}

- (NSString *)windowNibName
{
    return @"CSPDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return YES;
}

//TODO: (KVO) When a gameOverState change happens, pop up an alert

-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary *)change
                      context:(void *)context
{
    //1 - figure out winner
    NSString *tempWinner;
    switch([_myModel gameOverState])
    {
        case CSTGO_WinnerEx: tempWinner = @"Black"; break;
        case CSTGO_WinnerOh: tempWinner = @"White"; break;
        case CSTGO_CatsGame: break;
    }
    
    //2 -translate that and pop up
    [self popupGameOverAlertWithWinner:tempWinner];
    
}

- (void)popupGameOverAlertWithWinner:(NSString *)winnerName
{
    NSAlert* alert = [[NSAlert alloc]init];
    [alert addButtonWithTitle:@"End Game"];
    [alert addButtonWithTitle:@"Press 'CMD N' for New Game."];
    [alert setMessageText:[NSString stringWithFormat:@"Game Over. %@ Won!", winnerName]];
    [alert setAlertStyle:NSWarningAlertStyle];
    [alert runModal];
    [self close];
}

- (BOOL)isLegalFor:(NSString *)playerColor
         toMoveAtX:(NSUInteger)x
              andY:(NSUInteger)y
{
    CSTPlayerID thePlayer;
    
    if([playerColor isEqualToString:@"white"])
        thePlayer = CSTID_PlayerEx;
    else if([playerColor isEqualToString:@"black"])
        thePlayer = CSTID_PlayerOh;
    else
        thePlayer = CSTID_NOBODY;
    
    //return [_myModel isLegalMove:[CSTMove :thePlayer
    //                                               atX:x andY:y]];
}

- (void)executeMoveBy:(NSString *)playerColor
                  atX:(NSUInteger)x
                 andY:(NSUInteger)y
{
    CSTPlayerID thePlayer;
    
    if([playerColor isEqualToString:@"white"])
        thePlayer = CSTID_PlayerEx;
    else if([playerColor isEqualToString:@"black"])
        thePlayer = CSTID_PlayerOh;
    else
        thePlayer = CSTID_NOBODY;
    
    //[_myModel makeMove: thePlayer];
     
     //[CSTMove moveWithPlayer:thePlayer
     // atX:x andY:y]];
    
    
    //[[self penteBoard] needsDisplay];
    

//- (NSString *)whosePieceIsAtX:(NSUInteger)x
//                           andY:(NSUInteger)y
//{
//    CSPPlayerID pieceCode;
//    pieceCode = [_myModel whosePieceIsAt:[[CSPLocation alloc] initWithX:x
//                                                                   andY:y]];
//    switch(pieceCode)
//    {
//        case CSTID_PlayerOh return @"black";
//        case CSTID_PlayerEx: return @"white";
//        case CSTID_NOBODY: return @"empty";
//    }
//}

@end

