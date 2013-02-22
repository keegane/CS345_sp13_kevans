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

- (void)buttonResponse:(id)sender actionSent:(NSString *)actionSent keyText:(NSString *)keyText keyChar:(char)keyChar {
    NSLog(@"Message %@ recieved by %@ with argument %@",actionSent,self,sender);
    [[self screen] setStringValue:keyText];
    [_calc pressKey: keyChar];
}

- (IBAction)buttonFive:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Five"
                 keyChar:'5'];
    
}

- (IBAction)buttonOne:(id)sender {
    NSString* text=@"One";
    char key = '1';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonTwo:(id)sender {
    NSString* text=@"Two";
    char key = '2';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonThree:(id)sender {
    NSString* text=@"Three";
    char key = '3';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonFour:(id)sender {
    NSString* text=@"Four";
    char key = '4';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonSix:(id)sender {
    NSString* text=@"Six";
    char key = '6';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
     [_calc pressKey: key];

}

- (IBAction)buttonSeven:(id)sender {
    NSString* text=@"Seven";
    char key = '7';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonEight:(id)sender {
    NSString* text=@"Eight";
    char key = '8';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonNine:(id)sender {
    NSString* text=@"Nine";
    char key = '9';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonZero:(id)sender {
    NSString* text=@"Zero";
    char key = '0';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonPeriod:(id)sender {
    NSString* text=@"Period";
    char key = '.';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonMod:(id)sender {
    NSString* text=@"Mod";
    char key = '%';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonClear:(id)sender {
    NSString* text=@"Clear";
    char key = ' ';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonDivide:(id)sender {
    NSString* text=@"Divide";
    char key = '/';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonMultiply:(id)sender {
    NSString* text=@"Multiply";
    char key = '*';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonPlus:(id)sender {
    NSString* text=@"Plus";
    char key = '+';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonMinus:(id)sender {
    NSString* text=@"Minus";
    char key = '-';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}

- (IBAction)buttonEnter:(id)sender {
    NSString* text=@"Enter";
    char key = '=';
    NSLog(@"Message %@ recieved by %@ with argument %@",NSStringFromSelector(_cmd),self,sender);
    [[self screen] setStringValue:text];
    [_calc pressKey: key];

}
@end
