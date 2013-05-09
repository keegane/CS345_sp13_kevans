//
//  CSTBump.h
//  FinalExam_Kevans
//
//  Created by Keegan Evans on 5/6/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "CSTBumpHost.h"

@interface CSTBump : NSImageView

@property (strong) NSString* StoneColor;
-(void)setToBlack;
-(void)setToWhite;
-(void)setToBump;

-(id)initWithFrame:(NSRect)frameRect
           andHost:(id<CSTBumpHost>) hostingBoard;
@end