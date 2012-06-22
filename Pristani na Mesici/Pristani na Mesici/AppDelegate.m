//
//  AppDelegate.m
//  Pristani na Mesici
//
//  Created by Tomas Draslar on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "Game.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize txtGo;
@synthesize sldCell1;
@synthesize lblKolo;
@synthesize lblVyska;
@synthesize lblRychlost;
@synthesize lblPalivo;
@synthesize btnKonec;

- (void)doStep:(int)burn {
    Game *game = [Game instance];
    [game nextRound:burn];

    if ([game won]) {
        [btnKonec setHidden:false];
        [btnKonec setTitle:@"Uspesne jsi pristal, gratuluji!"];
        [game over];
    }
    
    if ([game lost]) {
        [btnKonec setHidden:false];
        [btnKonec setTitle:@"Rychlost je prilis vysoka! Havaroval jsi."];
        [game over];
    }    
}

- (void)updateUserInterface {
    Game *game = [Game instance];

    lblKolo.stringValue = [[NSString alloc] initWithFormat:@"%d. Kolo", [game round]];    
    lblVyska.stringValue = [[NSString alloc] initWithFormat:@"Vyska: %.1fm", [[game ship] vyska]];    
    lblRychlost.stringValue = [[NSString alloc] initWithFormat:@"Rychlost: %.1fm/s", [[game ship] rychlost]];    
    lblPalivo.stringValue = [[NSString alloc] initWithFormat:@"Palivo: %dkg", [[game ship] palivo]];        
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // NSLog (@"Programming is fun!");
    Game *game = [Game instance];
    [game start];
    
    [self updateUserInterface];
    [btnKonec setHidden:true];
    [btnKonec setTitle:@""];
}

- (IBAction)textchanged:(id)sender {
    // NSLog(txtGo.stringValue);
    Game *game = [Game instance];

    if ([game isRunning]) {
        sldCell1.floatValue = txtGo.stringValue.floatValue;
        [self doStep: txtGo.stringValue.intValue];
        [self updateUserInterface];
    }
}

- (IBAction)slidecell1:(id)sender {
    // NSLog( @"sender: %@", sender );
    // NSLog( @"value: %f", [sender floatValue] );
    txtGo.floatValue = [sender floatValue];
}

- (IBAction)jeste_jednou:(id)sender {
    Game *game = [Game instance];
    [game start];
   
    [self updateUserInterface];
    [btnKonec setHidden:true];
    [btnKonec setTitle:@""];    
}

@end
