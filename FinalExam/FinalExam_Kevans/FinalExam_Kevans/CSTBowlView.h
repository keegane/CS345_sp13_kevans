//
//  CSTBowlView.h
//  FinalExam_Kevans
//
//  Created by Keegan Evans on 5/6/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CSTBowlView : NSImageView
@property (strong) NSString* bowlColor;
-(void)setToBlack;
-(void)setToWhite;
@end
