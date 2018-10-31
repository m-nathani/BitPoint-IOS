//
//  BaseEntity.h
//  Guardian
//
//  Created by mohsin on 10/16/14.
//  Copyright (c) 2014 10Pearls. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseEntity : NSObject

@property (assign, getter=isSuccessful) BOOL status;
@property (assign, nonatomic) NSString* message;
@property (assign, nonatomic) NSInteger code;
@property (assign, nonatomic) BOOL tokenActive;

+ (NSArray*)entitiesFromObjects:(NSArray*)objects;
+ (NSArray*)entitiesFromObjects:(NSArray*)objects elseValue:(NSArray*)elseValue;
+ (NSArray*)objectsFromEntities:(NSArray*)entities;
+ (NSArray*)objectsFromEntities:(NSArray*)entities elseValue:(NSArray*)elseValue;

+ (instancetype)entityFromObject:(NSDictionary*)object;
+ (instancetype)entityFromObject:(NSDictionary*)object elseValue:(id)elseValue;

- (void)set:(NSDictionary*)input;
- (NSDictionary*)get;

@end
