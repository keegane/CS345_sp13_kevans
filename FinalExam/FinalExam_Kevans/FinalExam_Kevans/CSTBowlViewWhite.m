//
//  CSTBowlViewWhite.m
//  FinalExam_Kevans
//
//  Created by Keegan Evans on 5/6/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import "CSTBowlViewWhite.h"

@implementation CSTBowlViewWhite

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      
        [self setToWhite];
    }
    
    return self;
}

-(void) mouseDown:(NSEvent *)theEvent
{
    int dragImageSize = 50;
    
    NSImage *associatedImage;
    
    
    associatedImage = [NSImage imageNamed:@"Pente_White_Stone.png"];
    
    
    NSImage *imageToAccompanyDrag = associatedImage;
    NSSize reasonableImageSize = NSMakeSize(dragImageSize, dragImageSize);
    [imageToAccompanyDrag setSize:reasonableImageSize];
    
    NSPoint clickSpot = [self convertPoint:[theEvent locationInWindow]
                                  fromView:nil];
    clickSpot.x -= dragImageSize/2;
    clickSpot.y -= dragImageSize/2;
    
    NSPasteboard *dragData = [NSPasteboard pasteboardWithName:NSDragPboard];
    [dragData declareTypes:@[NSPasteboardTypeString] owner:nil];
    [dragData setString:[self bowlColor] forType:NSPasteboardTypeString];
    [self dragImage:imageToAccompanyDrag
                 at:clickSpot
             offset:NSZeroSize
              event:theEvent
         pasteboard:dragData
             source:self
          slideBack:YES];
    
    [super mouseDown:theEvent];

}


@end
