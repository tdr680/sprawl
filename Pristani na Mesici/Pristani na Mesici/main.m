//
//  main.m
//  Pristani na Mesici
//
//  Created by Tomas Draslar on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Game.h"

int main(int argc, char *argv[])
{
    // NSLog (@"Let's go...");
    
    Game *game = [[Game alloc] init];
    [game run];

    return NSApplicationMain(argc, (const char **)argv);
}
