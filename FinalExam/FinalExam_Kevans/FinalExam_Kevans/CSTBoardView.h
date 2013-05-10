//
//  CSTBoardView.h
//  FinalExam_Kevans
//
//  Created by Keegan Evans on 5/10/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CSTBumpHost.h"
#import "CSTInterfaceLocation.h"
#import "CSTBoardViewDelegate.h"

@interface CSTBoardView : NSImageView <CSTBumpHost>
-(void) drawGrid;
-(void)refreshBumpColors;

-(CSTBump*) bumpAtLocation:(id<CSTInterfaceLocation>) where;
-(id<CSTInterfaceLocation>) locationOfBump:(CSTBump*) whichBump;

-(void)setBump:(CSTBump*) bumpObject
       toColor:(NSString*) colorString;

@property (readwrite, weak) IBOutlet id<CSTBoardViewDelegate> dataSource;
@end