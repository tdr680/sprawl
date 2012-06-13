//
//  AppDelegate.h
//  Pristani na Mesici
//
//  Created by Tomas Draslar on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (assign) IBOutlet NSTextField *txtGo;
@property (assign) IBOutlet NSSliderCell *sldCell1;

@property (assign) IBOutlet NSTextField *lblKolo;
@property (assign) IBOutlet NSTextField *lblVyska;
@property (assign) IBOutlet NSTextField *lblRychlost;
@property (assign) IBOutlet NSTextField *lblPalivo;
@property (assign) IBOutlet NSButton *btnKonec;

- (IBAction)textchanged:(id)sender;
- (IBAction)slidecell1:(id)sender;
- (IBAction)jeste_jednou:(id)sender;

- (void)updateUserInterface;
- (void)doStep:(int)burn;

@end