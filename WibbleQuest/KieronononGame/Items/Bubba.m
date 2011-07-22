//
//  Bubba.m
//  MyBoots
//
//  Created by orta therox on 11/07/2011.
//  Copyright 2011 http://ortatherox.com. All rights reserved.
//

#import "Bubba.h"

@implementation Bubba

- (id)init {
    self = [super init];
    if (self) {
      self.descriptionInRoom = @"There is a massive bottle of water here, on the side is the word Bubba.";
      self.description = @"Bubba is a phat bottle of water, there might be some left in, why not try drinking bubba.";
      self.id = @"bubba";
      self.name = @"Bubba";
      drinksLeft = 3;
    }
    return self;
}

-(void) onPickup{
  [WQ print:@"Bubba sloshes as you pick up his weighty cylindrical self"];
}

-(void)onUse{
  [self drink];
}

- (void) drink{
  if (drinksLeft > 0) {
    drinksLeft = drinksLeft - 1;
    [WQ print:@"You take a swig from your Bubba, the water is pretty refreshing"];
  }else{
    [WQ print:@"Oh.. Looks like Bubba is empty."]; 
  }
}

-(BOOL)didRespondToCommand:(NSArray*)commandArray {
  NSString * command = [commandArray first];
  NSArray *commands = [NSArray arrayWithObjects:@"drink", @"imbibe", @"consume", nil];
  if ([commands containsObject:command]) {
    [self drink];  
      return YES;
  }
    return NO;
}

@end
