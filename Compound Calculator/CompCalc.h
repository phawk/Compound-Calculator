//
//  CompCalc.h
//  Compound Calculator
//
//  Created by Pete Hawkins on 10/09/2011.
//  Copyright 2011 phawk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CompCalc : NSObject {
    
    // Instance variables
    int term;
    double deposit;
    double interest;
    double tempTotal;
    NSNumber* total;
    
}

// Methods
- (NSNumber*)calculateTotal;
- (void)dealloc;

// Setters
- (void)setTerm:(int)input;
- (void)setDeposit:(double)input;
- (void)setInterest:(double)input;
- (void)setTotal:(NSNumber*)input;

// Getters
- (int)term;
- (double)deposit;
- (double)interest;
- (NSNumber*)total;

@end
