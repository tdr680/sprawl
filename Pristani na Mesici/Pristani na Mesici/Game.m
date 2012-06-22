//
//  Game.m
//  Pristani na Mesici
//
//  Created by Tomas Draslar on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Game.h"

@implementation Game

+(Game *)instance {
    static Game *myInstance = nil;
    
    if (nil == myInstance) {
        myInstance  = [[[self class] alloc] init];
    }
    return myInstance;
}

-(Game *) init {
    self = [super init];
    self->G = -2.0;
    self->ship = [[Ship alloc] initWithGame:self];
    [self ready];
    return self;    
}

-(void) ready {
    status = READY;
    round = 1;
    [ship setDefaults];    
}

-(void) start {
    if (status != READY) {
        [self ready];
    }
    status = RUNNING;
}

-(void) over {
    status = FINISHED;
}

-(BOOL) isRunning {
    return status == RUNNING;
}

-(void) nextRound:(int)burn {
    round++;
    [ship doStep:(float)burn];
}

-(int) round {
    return round;
}

-(float) G {
    return G;
}

-(Ship *) ship {
    return ship;
}

-(BOOL) won {
    return ([ship vyska] <= 0 && [ship rychlost] > -4);
}

-(BOOL) lost {
    return ([ship vyska] <= 0 && [ship rychlost] <= -4);
}


@end
