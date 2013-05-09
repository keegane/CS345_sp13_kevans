//
//  CSTBump.m
//  FinalExam_Kevans
//
//  Created by Keegan Evans on 5/6/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import "CSTBump.h"

@implementation CSTBump

{
    id<CSTBumpHost> _myBoard;
}

- (id)initWithFrame:(NSRect)frame
{
    //TODO: Make initWithFrame:andBoard: be the designated initializer (initWithFrame: will just pass the buck to it)
    return[self initWithFrame:frame andHost:nil];
    
}


-(void)setToWhite{
    
    [self setStoneColor:@"White"];
    [self setImage:[NSImage imageNamed:@"Pente_White_Stone.png"]];
    
}

-(void)setToBlack{
    [self setStoneColor:@"Black"];
    [self setImage:[NSImage imageNamed:@"Pente_Black Stone.png"]];
    
}

-(void)setToBump{
    
    [self setStoneColor:@"Bump"];
    [self setImage:[NSImage imageNamed:@"Pente_Blank_Bump.png"]];
}


-(NSDragOperation)draggingEntered:(id<NSDraggingInfo>)sender
{
    NSDragOperation desiredAction = [sender draggingSourceOperationMask];
    NSString* theColor = [self draggedColor:sender];
    
    if((desiredAction & NSDragOperationCopy) == NSDragOperationNone)
    {
        return NSDragOperationNone;
    }
    
    NSLog(@"Processing %@ drag into bump %@", theColor, self);
    if([_myBoard isColor:theColor
             legalAtBump:self])
    {
        [self setImageFrameStyle:NSImageFrameGrayBezel];
        return NSDragOperationCopy;
    } else {
        return NSDragOperationNone;
    }
}
-(void)draggingExited:(id<NSDraggingInfo>)sender
{
    [self setImageFrameStyle:NSImageFrameNone];
}

-(BOOL)performDragOperation:(id<NSDraggingInfo>)sender
{
    NSString* theColor = [self draggedColor:sender];
    BOOL dropAccepted = YES;
    
    NSLog(@"Processing %@ drop into bump %@", theColor, self);
    
    [_myBoard dropColor:theColor
               ontoBump:self];
    
    [self setNeedsDisplay];
    [self setImageFrameStyle:NSImageFrameNone];
    return dropAccepted;
}

-(NSString*) draggedColor:(id<NSDraggingInfo>) sender
{
    NSPasteboard* pboard = [sender draggingPasteboard];
    NSArray* availableTypes = [pboard types];
    
    if([availableTypes containsObject:NSPasteboardTypeString])
    {
        return [[pboard stringForType:NSPasteboardTypeString] lowercaseString];
    } else {
        return nil;
    }
}

- (id)initWithFrame:(NSRect)frameRect andHost:(id <CSTBumpHost>)hostingBoard
{
    self = [super initWithFrame:frameRect];
    if (self) {
        _myBoard = hostingBoard;
        [self setToBump];
        NSArray* acceptedTypes = @[NSPasteboardTypeString];
        [self registerForDraggedTypes:acceptedTypes];
    }
    return self;
}

@end