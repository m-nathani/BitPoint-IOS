//
//  LoginRequest.m
//  HughesNet
//
//  Created by Irfan Gul on 25/03/2016.
//
//

#import "LoginRequest.h"

#define KEY_NIC @"nic"
#define KEY_PASSWORD @"password"

@implementation LoginRequest

- (id)getObject
{
    NSMutableDictionary *obj = [super getObject];
    [obj setObject:_nicNumber forKey:KEY_NIC];
    [obj setObject:_password forKey:KEY_PASSWORD];
    
    return obj;
}

@end
