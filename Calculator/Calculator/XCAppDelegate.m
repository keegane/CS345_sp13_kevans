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
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"One"
                 keyChar:'1'];

}

- (IBAction)buttonTwo:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Two"
                 keyChar:'2'];

}

- (IBAction)buttonThree:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Three"
                 keyChar:'3'];

}

- (IBAction)buttonFour:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Four"
                 keyChar:'4'];

}

- (IBAction)buttonSix:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Six"
                 keyChar:'6'];

}

- (IBAction)buttonSeven:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Seven"
                 keyChar:'7'];

}

- (IBAction)buttonEight:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Eight"
                 keyChar:'8'];

}

- (IBAction)buttonNine:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Nine"
                 keyChar:'9'];

}

- (IBAction)buttonZero:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Zero"
                 keyChar:'0'];

}

- (IBAction)buttonPeriod:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Period"
                 keyChar:'.'];

}

- (IBAction)buttonMod:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Mod"
                 keyChar:'%'];

}

- (IBAction)buttonClear:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Clear"
                 keyChar:' '];

}

- (IBAction)buttonDivide:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Divide"
                 keyChar:'/'];

}

- (IBAction)buttonMultiply:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Multiply"
                 keyChar:'*'];

}

- (IBAction)buttonPlus:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Plus"
                 keyChar:'+'];

}

- (IBAction)buttonMinus:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Minus"
                 keyChar:'-'];
}

- (IBAction)buttonEnter:(id)sender {
    [self buttonResponse:sender
              actionSent:NSStringFromSelector(_cmd)
                 keyText:@"Enter"
                 keyChar:'='];

}
@end
