//
//  CSTBowlView.m
//  FinalExam_Kevans
//
//  Created by Keegan Evans on 5/6/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import "CSTBowlView.h"

@implementation CSTBowlView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    
    return self;
}

- (NSDragOperation) draggingSourceOperationMaskForLocal:(BOOL)flag
{
    return NSDragOperationCopy;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect]; // Drawing code here.
}

-(void) setToBlack
{
    [self setImage:[NSImage imageNamed:@"Pente_Black_Stone_Bowl.png"]];
    [self setBowlColor:@"black"];
}

-(void) setToWhite
{
    [self setImage:[NSImage imageNamed:@"Pente_White_Stone_Bowl.png"]];
    
    [self setBowlColor:@"white"];
}

-(void)iamgeForCurrentColor
{
    [self setToBlack];
    [self setToWhite];
    [self needsDisplay];
}

@end
