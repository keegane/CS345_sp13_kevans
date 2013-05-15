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

    NSButton *b = [[self window] standardWindowButton: NSWindowCloseButton];
    [b setAction: @selector( loggedClose: )];
    [b setTarget: self];
    //[_window performClose:0];
}

- (void)performClose:(id)sender {
    [self performClose:sender];
}

@end