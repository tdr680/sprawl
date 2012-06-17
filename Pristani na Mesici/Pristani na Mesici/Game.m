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
    ship = [[Ship alloc] init];
    [self ready];
    return self;    
}

-(void) ready {
    self->status = READY;
    round = 0;
    [ship setDefaults];
}

-(void) run {
    if (self->status == READY) {
        self->status = RUNNING;
        
    }
}

@end
