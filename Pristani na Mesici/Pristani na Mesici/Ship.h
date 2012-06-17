//
//  Ship.h
//  Pristani na Mesici
//
//  Created by Tomas Draslar on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ship : NSObject {
@private
    float vyska;
    float rychlost;
    int palivo;
    id game;
}

-(Ship *) initWithGame:(id) aGame;
-(void) setDefaults;

// -(void) setVyska: (float) vyska;
// -(void) setRychlost: (float) rychlost;
// -(void) setPalivo: (int) palivo;

-(float) vyska;
-(float) rychlost;
-(int) palivo;
-(float) G;

-(void) setGame:(id)aGame;
-(id) game;
@end
