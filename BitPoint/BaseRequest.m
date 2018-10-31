//
//  BaseRequest.m
//  HughesNet
//
//  Created by Irfan Gul on 25/03/2016.
//
//

#import "BaseRequest.h"

#define VENDOR_ID @"lO5V03tYw8wRKJn4"
#define DEVICE_TYPE @"mobile"
#define OPERATING_SYSTEM @"ios"

@implementation BaseRequest

- (void)set:(NSDictionary *)input {
    @throw [NSString stringWithFormat:@"Set method should be implemented in child class (%@)",self.description];
}


- (id)getObject
{
    NSMutableDictionary *baseInput = [NSMutableDictionary new];
    
//    [baseInput setObject:VENDOR_ID forKey:KEY_VENDOR_ID];
//    [baseInput setObject:API_VERSION forKey:KEY_API_VERSION];
//
//    if(![StringUtils isEmptyOrNull:_authToken]) {
//        [baseInput setObject:_authToken forKey:KEY_AUTH_TOKEN];
//
//    }
//    else {
//        [baseInput setObject:DEVICE_TYPE forKey:KEY_DEVICE_TYPE];
//        [baseInput setObject:OPERATING_SYSTEM forKey:KEY_OPERATING_SYSTEM];
//    }
    
    return baseInput;
}

#pragma mark - Helper Methods

- (void)setObject:(id)object inDictionary:(NSMutableDictionary *)dictionary forKey:(NSString *)key
{
    if (![StringUtils isEmptyOrNull:object])
    {
        [dictionary setObject:object forKey:key];
    }
}

- (void)setString:(NSString *)stringValue inDictionary:(NSDictionary *)dictionary forKey:(NSString *)key
{
    if (![StringUtils isEmptyOrNull:stringValue])
    {
        [dictionary setValue:stringValue forKey:key];
    }
}

- (void)setNumber:(NSNumber *)numberValue inDictionary:(NSDictionary *)dictionary forKey:(NSString *)key
{
    if (numberValue)
    {
        [dictionary setValue:numberValue forKey:key];
    }
}

- (void)setBoolean:(BOOL)boolValue inDictionary:(NSDictionary *)dictionary forKey:(NSString *)key{
    [dictionary setValue:(boolValue) ? @1 : @0 forKey:key];
}


@end
