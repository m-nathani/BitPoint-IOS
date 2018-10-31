//
//  BaseEntity.m
//  Guardian
//
//  Created by mohsin on 10/16/14.
//  Copyright (c) 2014 10Pearls. All rights reserved.
//

#import "BaseEntity.h"
#import <objc/runtime.h>

@implementation BaseEntity

+ (NSArray*)entitiesFromObjects:(NSArray*)objects {
    if (!objects)
        return nil;
    
    NSMutableArray *entities = [NSMutableArray array];
    for (NSDictionary *object  in objects) {
        BaseEntity *entity = [self new];
        [entity set:object];
        [entities addObject:entity];
    }
    
    return entities;
}

+ (NSArray*)entitiesFromObjects:(NSArray*)objects elseValue:(NSArray*)elseValue {
    if (!objects)
        return elseValue;
    
    return [self entitiesFromObjects:objects];
}

+ (NSArray*)objectsFromEntities:(NSArray*)entities {
    if (!entities)
        return @[];
    
    NSMutableArray *objects = [[NSMutableArray alloc] init];
    for (BaseEntity *entity in entities) {
        [objects addObject:[entity get]];
    }
    
    return objects;
}

+ (NSArray*)objectsFromEntities:(NSArray*)entities elseValue:(NSArray*)elseValue {
    if (!entities)
        return elseValue;
    
    return [self objectsFromEntities:entities];
}

+ (instancetype)entityFromObject:(NSDictionary*)object {
    id entity = [self new];
    if (entity)
        [entity set:object];
    return entity;
}

+ (instancetype)entityFromObject:(NSDictionary*)object elseValue:(id)elseValue {
    if (!object)
        return elseValue;
    
    return [self entityFromObject:object];
}

-(void)set:(NSDictionary*)input {
//    _status      = [ParserUtils boolValue:input key:KEY_STATUS];
//    _code        = [ParserUtils intValue:input key:KEY_CODE];
//    _message     = [ParserUtils stringValue:input key:KEY_MESSAGE_];
//    _tokenActive = [ParserUtils boolValue:input key:KEY_TOKEN_ACTIVE defaultValue:_tokenActive];
}

- (NSDictionary*)get{
    @throw [NSString stringWithFormat:@"Get method should be implemented in child class (%@)",self.description];
}


#pragma mark - NSCopying Delegate

- (id)copyWithZone:(NSZone *)zone {
    id clone = [[self.class alloc] init];
    
    NSMutableArray *propertyList = [self propertyList];
    for (NSString *propertyName in propertyList)
        [clone setValue:[[self valueForKeyPath:propertyName] copy] forKeyPath:propertyName];
    
    return clone;
}


#pragma mark - ProperyList

- (NSMutableArray*)propertyList {
    unsigned int outCount;
    NSMutableArray *propertyList = [NSMutableArray array];
    Class class = self.class;
    while (class && class != [NSObject class]) {
        objc_property_t *properties = class_copyPropertyList(class, &outCount);
        for(int i = 0; i < outCount; i++) {
            objc_property_t property = properties[i];
            const char *propName = property_getName(property);
            if(propName) {
                NSString *propertyName = [NSString stringWithUTF8String:propName];
                [propertyList insertObject:propertyName atIndex:0];
            }
        }
        free(properties);
        class = [class superclass];
    }
    
    return propertyList;
}


@end
