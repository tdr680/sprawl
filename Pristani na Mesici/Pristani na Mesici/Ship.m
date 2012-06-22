//
//  Ship.m
//  Pristani na Mesici
//
//  Created by Tomas Draslar on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Ship.h"

@implementation Ship

-(void) setDefaults {
    vyska = 500;
    rychlost = -20;
    palivo = 400;    
}

-(Ship *) initWithGame:(id)aGame {
    self = [self init];
    [self setDefaults];
    [self setGame:aGame];
    return self;
}

-(float) vyska {
    return vyska;
}

-(float) rychlost {
    return rychlost;
}

-(int) palivo {
    return palivo;
}

-(float) G {
    return [game G];
}

-(void) setGame:(id)aGame {
    game = aGame;
}

-(id) game {
    return game;
}

-(void) doStep:(float)burn {
    float b = MIN(burn, palivo);
    rychlost = rychlost+[self G]-([self G]/8)*b;
    vyska=vyska+rychlost;
    palivo = palivo - burn;
    if (palivo < 0) {
        palivo = 0;
    }
}

@end
