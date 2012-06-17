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

-(Ship *) init {
    self = [super init];
    [self setDefaults];
    return self;
}

@end
