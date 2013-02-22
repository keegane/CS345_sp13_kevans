//
//  XCAppDelegate.m
//  Calculator
//
//  Created by Keegan Evans on 2/8/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import "XCAppDelegate.h"

@implementation XCAppDelegate

NSString* _calculator;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
}

- (IBAction)buttonFive:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Five"];
    [_calculator pressKey: '5'];
    
}

- (IBAction)buttonOne:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"One"];

}

- (IBAction)buttonTwo:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Two"];

}

- (IBAction)buttonThree:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Three"];

}

- (IBAction)buttonFour:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Four"];

}

- (IBAction)buttonSix:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Six"];

}

- (IBAction)buttonSeven:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Seven"];

}

- (IBAction)buttonEight:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Eight"];

}

- (IBAction)buttonNine:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Nine"];

}

- (IBAction)buttonZero:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Zero"];

}

- (IBAction)buttonPeriod:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Period"];

}

- (IBAction)buttonMod:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Mod"];

}

- (IBAction)buttonClear:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Clear"];

}

- (IBAction)buttonDivide:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Divide"];

}

- (IBAction)buttonMultiply:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Multiply"];

}

- (IBAction)buttonPlus:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Plus"];

}

- (IBAction)buttonMinus:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Subtract"];

}

- (IBAction)buttonEnter:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"ENTER"];

}
@end
