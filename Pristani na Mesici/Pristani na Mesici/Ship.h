//
//  Ship.h
//  Pristani na Mesici
//
//  Created by Tomas Draslar on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ship : NSObject {
    float vyska;
    float rychlost;
    int palivo;
}

-(Ship *) init;

-(void) setDefaults;

@end
