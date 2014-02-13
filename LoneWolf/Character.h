//
//  Character.h
//  LoneWolf
//
//  Created by Matías Ginart on 12/02/14.
//  Copyright (c) 2014 Matías Ginart. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject

@property (nonatomic, strong) NSNumber* combatStrength;
@property (nonatomic, strong) NSNumber* maxHP;
@property (nonatomic, strong) NSNumber* currentHP;
@property (nonatomic, strong) NSMutableArray* combats;
@property (nonatomic, strong) NSMutableArray* kaiDisciplines;
@property (nonatomic, strong) NSMutableArray* weapons;
@property (nonatomic, strong) id bag;
@property (nonatomic, strong) NSMutableArray* foods;
@property (nonatomic, strong) NSMutableArray* extraObjects;
@property (nonatomic, strong) NSMutableArray* specialObjects;

+ (instancetype)createNewCharacter;

+ (instancetype)currentCharacter;

@end
