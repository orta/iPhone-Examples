//
//  Bubba.m
//  MyBoots
//
//  Created by orta therox on 22/07/2011.
//  Copyright 2011 http://ortatherox.com. All rights reserved.
//

#import "Bubba.h"

@implementation Bubba

-(void)onPickup {
  [WQ print:@"Bubba sloshes around as you pick him up"];
}

-(void)onDrop {
  [WQ print:@"You drop bubba onto the floor and he rolls casually onto his side."];
}

-(void)onUse {
  [WQ print:@"You take a swig, it never seems to end"];
}

@end
