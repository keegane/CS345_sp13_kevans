//
//  CSTBoardView.m
//  FinalExam_Kevans
//
//  Created by Keegan Evans on 5/10/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import "CSTBoardView.h"
#import "CSTBump.h"
#import "CSTLocation.h"

const int BOARD_SIZE = 400;
const int GRID_SQUARES = 2;
const int GRID_SIZE = BOARD_SIZE/(GRID_SQUARES+1);

@implementation CSTBoardView
{
    NSMapTable* ourMapTable;
    NSMutableArray* twoDArray;
}

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        ourMapTable = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsStrongMemory
                                            valueOptions:NSPointerFunctionsStrongMemory];
        twoDArray = [NSMutableArray array];
        
        [self setImage:[NSImage imageNamed:@"Pente_Board_2.png"]];
        
        NSRect vJPBRect;
        CSTBump* tempBump;
        NSPoint location;
        
        
        CSTLocation* tempLocation;
        

        int numPlaces = 2;
        
        for (int x=0; x<numPlaces+1; x+=1)
        {
            NSMutableArray* tempRowArray = nil;
            tempRowArray = [NSMutableArray array];
            for (int y=0; y<numPlaces+1; y+=1)
            {
                location.x = x*GRID_SIZE;
                location.y = y*GRID_SIZE;
                vJPBRect = NSMakeRect(location.x, location.y, GRID_SIZE, GRID_SIZE);
                tempBump = [[CSTBump alloc] initWithFrame:vJPBRect
                                                  andHost:self];
                [self addSubview:tempBump];
                [tempRowArray addObject: tempBump];
                tempLocation = [[CSTLocation alloc] initWithX:x
                                                         andY:y];
                [ourMapTable setObject: tempLocation forKey:tempBump];
                
            }
            [twoDArray addObject: tempRowArray];
        }
    }
    return self;
}


-(void) drawRect:(NSRect)dirtyRect

{
    
    [super drawRect:dirtyRect];
    [self drawGrid];
    [self refreshBumpColors];
}

- (void)drawGrid
{
    NSPoint startPoint;
    NSPoint endPoint;
    NSBezierPath * path = [NSBezierPath bezierPath];
    //Sketch horizontal lines
    for (int i=0; i<BOARD_SIZE+GRID_SIZE; i+=GRID_SIZE)
    {
        startPoint = NSMakePoint(0, i);
        endPoint   = NSMakePoint(BOARD_SIZE, i);
        [path  moveToPoint:startPoint];
        [path lineToPoint:endPoint];
    }
    
    //Sketch vertical lines
    for (int i=0; i<BOARD_SIZE+GRID_SIZE; i+=GRID_SIZE)
    {
        startPoint = NSMakePoint(i, 0);
        endPoint   = NSMakePoint(i, BOARD_SIZE);
        [path  moveToPoint: startPoint];
        [path lineToPoint:endPoint];
    }
    
    //Ink the sketch
    [[NSColor blackColor] set];
    [path setLineWidth: 2];
    [path stroke];
    
}
- (void)refreshBumpColors
{
    id<CSTInterfaceLocation> where = nil;
    NSString* color;
    for(CSTBump* aBump in [ourMapTable keyEnumerator])
    {
        where = [ourMapTable objectForKey:aBump];
        color = [[self dataSource] getPlayerColorAtX:[where x]
                                                andY:[where y]];
        [self setBump:aBump
              toColor:color];
    }
}

- (CSTBump *)bumpAtLocation:(id <CSTInterfaceLocation>)where
{
    return [[twoDArray objectAtIndex:[where x]] objectAtIndex:[where y]];
}

- (id <CSTInterfaceLocation>)locationOfBump:(CSTBump *)whichBump
{
    return [ourMapTable objectForKey:whichBump];
}

- (void)setBump:(CSTBump *)bumpObject
        toColor:(NSString *)colorString
{
    if([colorString isEqualToString:@"black"])
    {
        [bumpObject setToBlack];
    } else if([colorString isEqualToString:@"white"]) {
        [bumpObject setToWhite];
    } else if([colorString isEqualToString:@"empty"]) {
        [bumpObject setToBump];
    } else {
        NSLog(@"Error, bad color %@ for bump", colorString);
    }
}

- (BOOL)isColor:(NSString *)whichColor
    legalAtBump:(CSTBump *)whichBump
{
    id<CSTInterfaceLocation> where = [self locationOfBump:whichBump];
    return [[self dataSource] isLegalFor:whichColor
                               toMoveAtX:[where x]
                                    andY:[where y]];
}



- (void)dropColor:(NSString *)whichColor
         ontoBump:(CSTBump *)whichBump
{
    id<CSTInterfaceLocation> where = [self locationOfBump:whichBump];
    return [[self dataSource] executeMoveBy:whichColor
                                        atX:[where x]
                                       andY:[where y]];
}

@end
