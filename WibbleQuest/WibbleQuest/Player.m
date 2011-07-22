//
//  Player.m
//  MyBoots
//
//  Created by orta therox on 15/07/2011.
//  Copyright 2011 http://ortatherox.com. All rights reserved.
//

#import "Player.h"

@implementation Player
@synthesize data = _data, health, maxHealth, damageRange, money;

//singleton
static Player * sharedPlayer;

-(id)init {
  self = [super init];
  self.data = [NSMutableDictionary dictionary];
  sharedPlayer = self;
  health = maxHealth;
  return self;
}

+(BOOL)has:(NSString*)itemID {
  return [[WibbleQuest sharedWibble].inventory hasItem:itemID];
}

+(Player*)sharedPlayer {
  if (sharedPlayer) return sharedPlayer;
  return [[Player alloc] init];
}

+(void)teleportToRoomWithID:(NSString*)roomID {
  Room * room = [WQ getRoomByID:roomID];
  if (room) {
    WibbleQuest *wq = [WibbleQuest sharedWibble];
    wq.currentRoom = room;
    [wq movedRoom];
  }
}

-(NSString*)getString:(NSString*)key {
  return [self.data objectForKey:key];
}

-(void)setString:(NSString *)value forKey:(NSString *)key{
  [self.data setValue:value forKey:key];
}

-(int)getInt:(NSString*)key {
  return [[self.data objectForKey:key] intValue];
}

-(void)setInt:(int)value forKey:(NSString *)key{
  [self.data setValue:[NSString stringWithFormat:@"%d", value] forKey:key];
}

@end
