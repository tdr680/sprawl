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

int kolo = 1;

float vyska = 500;
float rychlost = -20;
int palivo = 400;
float g = -2;

Boolean konec;

@synthesize window = _window;

@synthesize txtGo;
@synthesize sldCell1;

@synthesize lblKolo;
@synthesize lblVyska;
@synthesize lblRychlost;
@synthesize lblPalivo;

@synthesize btnKonec;

- (void)doStep:(int)burn {
    kolo++;
    burn = MIN(burn, palivo);
    rychlost = rychlost+g-(g/8)*(float)burn;
    vyska=vyska+rychlost;
    palivo = palivo - burn;
    
    if (vyska <= 0 && rychlost > -4) {
        [btnKonec setHidden:false];
        [btnKonec setTitle:@"Uspesne jsi pristal, gratuluji!"];
        konec = true;
    }
    
    if (vyska <= 0 && rychlost <= -4) {
        [btnKonec setHidden:false];
        [btnKonec setTitle:@"Rychlost je prilis vysoka! Havaroval jsi."];
        konec = true;
    }    
}

- (void)updateUserInterface {
    lblKolo.stringValue = [[NSString alloc] initWithFormat:@"%d. Kolo", kolo];    
    lblVyska.stringValue = [[NSString alloc] initWithFormat:@"Vyska: %.1fm", vyska];    
    lblRychlost.stringValue = [[NSString alloc] initWithFormat:@"Rychlost: %.1fm/s", rychlost];    
    lblPalivo.stringValue = [[NSString alloc] initWithFormat:@"Palivo: %dkg", palivo];        
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // NSLog (@"Programming is fun!");
    
    [self updateUserInterface];
    konec = false;
    [btnKonec setHidden:true];
    [btnKonec setTitle:@""];
}

- (IBAction)textchanged:(id)sender {
    // NSLog(txtGo.stringValue);
    if (!konec) {
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
    kolo = 1;
    vyska = 500;
    rychlost = -20;
    palivo = 400;
    
    [self updateUserInterface];
    konec = false;
    [btnKonec setHidden:true];
    [btnKonec setTitle:@""];
    
}


@end
