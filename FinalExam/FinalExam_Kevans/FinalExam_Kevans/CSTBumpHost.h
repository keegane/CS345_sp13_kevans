//
//  CSTBumpHost.h
//  FinalExam_Kevans
//
//  Created by Keegan Evans on 5/6/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CSTBump;

@protocol CSTBumpHost <NSObject>
-(BOOL) isColor:(NSString*) whichColor
    legalAtBump:(CSTBump*) whichBump;

-(void)dropColor:(NSString*) whichColor
        ontoBump:(CSTBump*) whichBump;
@end
