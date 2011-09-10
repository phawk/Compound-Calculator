//
//  Compound_CalculatorAppDelegate.m
//  Compound Calculator
//
//  Created by Pete Hawkins on 10/09/2011.
//  Copyright 2011 phawk. All rights reserved.
//

#import "Compound_CalculatorAppDelegate.h"
#import "CompCalc.h"

@implementation Compound_CalculatorAppDelegate

@synthesize window;
@synthesize DepositBox;
@synthesize InterestBox;
@synthesize TermBox;
@synthesize TotalLabel;
@synthesize mainView;

- (void)dealloc
{
    [DepositBox release];
    [InterestBox release];
    [TermBox release];
    [TotalLabel release];
    
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    // Set background of the view
    [window setBackgroundColor:[NSColor colorWithDeviceWhite:100 alpha:100]];
    
    NSLog (@"Program started");
    [pool drain];
}

- (IBAction)CalculateNow:(id)sender {
    
    // Instantiate the calc class
    CompCalc *calc = [[CompCalc alloc] init];
    
    [calc autorelease];
    
    // Set the variables needed for calculation
    [calc setDeposit:[DepositBox doubleValue]];
    [calc setTerm:[TermBox intValue]];
    [calc setInterest:[InterestBox doubleValue]];
    
    // Run the calculate function
    NSNumber* amount = [calc calculateTotal];
    
    // alloc formatter
    NSNumberFormatter *currencyStyle = [[NSNumberFormatter alloc] init];
    
    // set options.
    [currencyStyle setFormatterBehavior:NSNumberFormatterBehavior10_4];
    [currencyStyle setNumberStyle:NSNumberFormatterCurrencyStyle];
    
    // get formatted string
    NSString* formatted = [currencyStyle stringFromNumber:amount];
    
    // Set the total label to the currency value
    [TotalLabel setStringValue:formatted];
    
    [currencyStyle release];
}

@end