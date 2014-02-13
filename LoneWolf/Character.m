//
//  Character.m
//  LoneWolf
//
//  Created by Matías Ginart on 12/02/14.
//  Copyright (c) 2014 Matías Ginart. All rights reserved.
//

#import "Character.h"

@implementation Character

+ (instancetype)createNewCharacter {
    Character* aCharacter = [[[self class] alloc] init];
    return aCharacter;
}

@end
