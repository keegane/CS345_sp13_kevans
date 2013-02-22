//
//  XCAppDelegate.h
//  Calculator
//
//  Created by Keegan Evans on 2/8/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface XCAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *screen;

- (IBAction)buttonFive:(id)sender;
- (IBAction)buttonOne:(id)sender;
- (IBAction)buttonTwo:(id)sender;
- (IBAction)buttonThree:(id)sender;
- (IBAction)buttonFour:(id)sender;
- (IBAction)buttonSix:(id)sender;
- (IBAction)buttonSeven:(id)sender;
- (IBAction)buttonEight:(id)sender;
- (IBAction)buttonNine:(id)sender;
- (IBAction)buttonZero:(id)sender;
- (IBAction)buttonPeriod:(id)sender;
- (IBAction)buttonMod:(id)sender;
- (IBAction)buttonClear:(id)sender;
- (IBAction)buttonDivide:(id)sender;
- (IBAction)buttonMultiply:(id)sender;
- (IBAction)buttonPlus:(id)sender;
- (IBAction)buttonMinus:(id)sender;
- (IBAction)buttonEnter:(id)sender;

@end
