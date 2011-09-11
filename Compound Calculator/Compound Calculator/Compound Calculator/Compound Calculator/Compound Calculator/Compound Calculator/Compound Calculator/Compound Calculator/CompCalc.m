//
//  CompCalc.m
//  Compound Calculator
//
//  Created by Pete Hawkins on 10/09/2011.
//  Copyright 2011 phawk. All rights reserved.
//

#import "CompCalc.h"

@implementation CompCalc


- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (NSNumber*)calculateTotal
{
    // Total starts out as deposit
    tempTotal = deposit;
    
    NSLog(@"Deposit: %f, Term: %d, Interest: %f", deposit, term, interest);
    
    // Loop through each month and add interest onto the total
    for (int i = 0; i < term; i++) {
        tempTotal = tempTotal + ((tempTotal / 100) * interest);
    }
    
    // Log the total amount
    NSLog(@"Total ammount return is: %f", tempTotal);
    
    NSNumber* newTotal = [NSNumber numberWithDouble:tempTotal];
    
    [self setTotal: newTotal];
    
    return total;
}


/*
 * Accessor methods
 */
- (void)setTerm:(int)input { term = input; }
- (void)setDeposit:(double)input { deposit = input; }
- (void)setInterest:(double)input { interest = input; }
- (void)setTotal:(NSNumber*)input
{
    [total autorelease];
    total = [input retain];
}

- (int)term { return term; }
- (double)deposit { return deposit; }
- (double)interest { return interest; }
- (NSNumber*)total { return total; }

/*
 * Dealloc
 */
- (void)dealloc
{
    [total release];
    [super dealloc];
}
@end