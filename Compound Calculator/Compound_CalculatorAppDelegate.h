//
//  Compound_CalculatorAppDelegate.h
//  Compound Calculator
//
//  Created by Pete Hawkins on 10/09/2011.
//  Copyright 2011 phawk. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Compound_CalculatorAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    NSTextField *DepositBox;
    NSTextField *InterestBox;
    NSTextField *TermBox;
    NSTextField *TotalLabel;
    NSView *mainView;
}

- (IBAction)CalculateNow:(id)sender;

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *DepositBox;
@property (assign) IBOutlet NSTextField *InterestBox;
@property (assign) IBOutlet NSTextField *TermBox;
@property (assign) IBOutlet NSTextField *TotalLabel;
@property (assign) IBOutlet NSView *mainView;

@end
