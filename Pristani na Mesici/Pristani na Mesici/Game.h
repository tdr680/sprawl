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
    Ship *ship;
    int round;
    enum gameStatus status;
@private
    float G; //  -2.0
}

-(Game *) init;
-(void) run;

@end
