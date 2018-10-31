//
//  User.m
//  iOSTemplate
//
//  Created by mohsin on 4/3/14.
//  Copyright (c) 2014 mohsin. All rights reserved.
//

#import "User.h"
#import "ParserUtils.h"

#define FIRST_NAME @"firstName"
#define LAST_NAME @"lastName"
#define NIC_NO @"nic"
#define PASSWORD @"password"
#define GENDER @"gender"
#define USERTYPE @"userType"
#define EMAIL @"email"
#define IDENTIFIER @"id"

@implementation User

-(void)set:(NSDictionary*)input{
    
    NSDictionary *user = [ParserUtils object:input key:@"user"];
    self.firstName = [ParserUtils stringValue:user key:KEY_FIRST_NAME];
    self.lastName = [ParserUtils stringValue:user key:KEY_LAST_NAME];
    self.email = [ParserUtils stringValue:user key:EMAIL];
    self.NIC = [ParserUtils stringValue:user key:NIC_NO];
    self.gender = [ParserUtils stringValue:user key:GENDER];
    self.userType = [ParserUtils intValue:user key:USERTYPE];
    self.identifier = [ParserUtils numberValue:user key:IDENTIFIER];
    
    self.authToken = [ParserUtils stringValue:input key:KEY_ACCESS_TOKEN];
}


- (id)initWithCoder:(NSCoder *)coder {
    
    self = [super init];
    if (self != nil) {
        
        self.firstName = [coder decodeObjectForKey:KEY_FIRST_NAME];
        self.lastName = [coder decodeObjectForKey:KEY_LAST_NAME];
        self.email = [coder decodeObjectForKey:EMAIL];
        self.NIC = [coder decodeObjectForKey:NIC_NO];
        self.gender = [coder decodeObjectForKey:GENDER];
        self.userType = [[coder decodeObjectForKey:USERTYPE] integerValue];
        self.identifier = [coder decodeObjectForKey:IDENTIFIER];

        self.authToken = [coder decodeObjectForKey:KEY_ACCESS_TOKEN];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    
    [coder encodeObject:_firstName forKey:KEY_FIRST_NAME];
    [coder encodeObject:_lastName forKey:KEY_LAST_NAME];
    [coder encodeObject:_email forKey:EMAIL];
    [coder encodeObject:_NIC forKey:NIC_NO];
    [coder encodeObject:_gender forKey:GENDER];
    [coder encodeObject:@(_userType) forKey:USERTYPE];
    [coder encodeObject:_identifier forKey:IDENTIFIER];
    [coder encodeObject:_authToken forKey:KEY_ACCESS_TOKEN];
}


-(NSString*)getFormattedName {
    return [NSString stringWithFormat:@"%@ %@",self.firstName,self.lastName];
}

@end
