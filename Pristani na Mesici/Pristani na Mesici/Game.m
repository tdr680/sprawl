//
//  Game.m
//  Pristani na Mesici
//
//  Created by Tomas Draslar on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Game.h"

@implementation Game

-(Game *) init {
    self = [super init];
    self->G = -2.0;
    self->ship = [[Ship alloc] initWithGame:self];
    [self ready];
    return self;    
}

-(void) ready {
    status = READY;
    round = 0;
    [ship setDefaults];
}

-(Ship *) ship {
    return ship;
}

-(float) G {
    return G;
}

-(void) run {
    if (status == READY) {
        status = RUNNING;
        
    }
}

@end
