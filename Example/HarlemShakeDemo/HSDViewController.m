//
//  HSDViewController.m
//  HarlemShakeDemo
//
//  Created by Zac White on 3/7/13.
//  Copyright (c) 2013 Velos Mobile. All rights reserved.
//

#import "HSDViewController.h"

#import "VLMHarlemShake.h"

@interface HSDViewController ()

@property (strong, nonatomic) VLMHarlemShake *harlemShake;

@end

@implementation HSDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.harlemShake = [[VLMHarlemShake alloc] initWithLonerView:self.shakeButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)performShake:(id)sender {
    [self.harlemShake shakeWithCompletion:^{
        NSLog(@"Shaking done.");
    }];
}
- (void)buttonResponse:(id)sender
        actionExecuted:(NSString *)actionExecuted
               keyText:(NSString *)keyText
               keyChar:(char)keyChar {
    NSLog(@"Message %@ recieved by %@ with argument %@", actionExecuted, self, sender);
    [[self CalculatorScreen] setText:keyText];
}

- (IBAction)buttonZero:(id)sender {
    [self buttonResponse:sender
          actionExecuted:NSStringFromSelector(_cmd)
                 keyText:@"Zero"
                 keyChar:'0'];
}


- (IBAction)buttonOne:(id)sender {
    NSString* keyText=@"One";
    char keyChar = '1';
    NSString* actionExecuted = NSStringFromSelector(_cmd);
    [self buttonResponse:sender
          actionExecuted:actionExecuted
                 keyText:keyText
                 keyChar:keyChar];
}

- (IBAction)buttonTwo:(id)sender {
    [self buttonResponse:sender
          actionExecuted:NSStringFromSelector(_cmd)
                 keyText:@"Two"
                 keyChar:'2'];
}

- (IBAction)buttonThree:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Three"];
}

- (IBAction)buttonFour:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Four"];
}

- (IBAction)buttonFive:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Five"];
    
}

- (IBAction)buttonSix:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Six"];
}

- (IBAction)buttonSeven:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Seven"];
}

- (IBAction)buttonEight:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Eight"];
}

- (IBAction)buttonNine:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Nine"];
}

- (IBAction)buttonEqual:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Equal"];
}

- (IBAction)buttonAdd:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Add"];
}

- (IBAction)buttonSubtract:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Subtract"];
}

- (IBAction)buttonMultiply:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Multiply"];
}

- (IBAction)buttonDivide:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Divide"];
}

- (IBAction)buttonClear:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Clear Number"];
}

- (IBAction)buttonAClear:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"All Clear"];
}

- (IBAction)buttonMod:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Mode"];
}

- (IBAction)buttonDecimal:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Decimal Inserted"];
}
@end
