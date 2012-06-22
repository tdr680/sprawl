//
//  Game.h
//  Pristani na Mesici
//
//  Created by Tomas Draslar on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ship.h"

enum gameStatus {
    READY,
    RUNNING,
    FINISHED
};

@interface Game : NSObject {
    int round;
    enum gameStatus status;
    Ship *ship;
    float G; //  -2.0
}

+(Game *) instance;
-(Game *) init;

-(void) start;
-(void) over;

-(BOOL) isRunning;
-(void) nextRound:(int)burn;

-(int) round;
-(float) G;
-(Ship *) ship;

-(BOOL) won;
-(BOOL) lost;

@end
