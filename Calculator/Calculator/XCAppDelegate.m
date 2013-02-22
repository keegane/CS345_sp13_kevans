//
//  XCAppDelegate.m
//  Calculator
//
//  Created by Keegan Evans on 2/8/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import "XCAppDelegate.h"
#import "Calculator.h"
@implementation XCAppDelegate
{
    Calculator* _calc;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    _calc = [[Calculator alloc]init];
}

- (IBAction)buttonFive:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Five"];
    [_calc pressKey: '5'];
    
}

- (IBAction)buttonOne:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"One"];
    [_calc pressKey: '1'];

}

- (IBAction)buttonTwo:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Two"];
    [_calc pressKey: '2'];

}

- (IBAction)buttonThree:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Three"];
    [_calc pressKey: '3'];

}

- (IBAction)buttonFour:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Four"];
    [_calc pressKey: '4'];

}

- (IBAction)buttonSix:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Six"];
    [_calc pressKey: '6'];

}

- (IBAction)buttonSeven:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Seven"];
    [_calc pressKey: '7'];

}

- (IBAction)buttonEight:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Eight"];
    [_calc pressKey: '8'];

}

- (IBAction)buttonNine:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Nine"];
    [_calc pressKey: '9'];

}

- (IBAction)buttonZero:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Zero"];
    [_calc pressKey: '0'];

}

- (IBAction)buttonPeriod:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Period"];
    [_calc pressKey: '.'];

}

- (IBAction)buttonMod:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Mod"];
    [_calc pressKey: '%'];

}

- (IBAction)buttonClear:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Clear"];
    [_calc pressKey: ' '];

}

- (IBAction)buttonDivide:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Divide"];
    [_calc pressKey: '/'];

}

- (IBAction)buttonMultiply:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Multiply"];
    [_calc pressKey: '*'];

}

- (IBAction)buttonPlus:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Plus"];
    [_calc pressKey: '+'];

}

- (IBAction)buttonMinus:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"Subtract"];
    [_calc pressKey: '-'];

}

- (IBAction)buttonEnter:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:@"ENTER"];
    [_calc pressKey: '='];

}
@end
