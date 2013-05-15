//
//  CSDAppDelegate.m
//  Intercepting Close Example
//
//  Created by Keegan Evans on 5/15/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import "CSDAppDelegate.h"

@implementation CSDAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self canMove];
}
//{
//    if([_ReadyToClose state] == NSOnState)
//    {
//        [_window setMovable:YES];
//    }
//    else if([_ReadyToClose state] == NSOffState)
//    {
//        [_window setMovable:NO];
//    }

//}
-(void)canMove
{
    if([_CannotMoveWindow state] == NSOnState)
    {
        [_window setMovable:NO];
    }
    else if([_CannotMoveWindow state] == NSOffState)
    {
        [_window setMovable:YES];
    }
    
    
}
//- (void)performClose:(id)sender {
//    [self performClose:sender];
//}

@end