//
//  Calculator.h
//  Calculator
//
//  Created by Keegan Evans on 2/19/13.
//  Copyright (c) 2013 Keegan Evans. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property char numberOnScreen;
@property char numberAccumulated;
@property char operationPending;

- (void)pressKey:(char) character;
@end
