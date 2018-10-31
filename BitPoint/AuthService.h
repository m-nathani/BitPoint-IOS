//
//  AuthService.h
//  10Pearls
//
//  Created by mohsin on 3/19/14.
//  Copyright (c) 2014 SocialRadar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseService.h"
#import "LoginRequest.h"
#import "PasswordChangeRequest.h"

@class RegisterRequest;

@interface AuthService : BaseService

- (void)login:(LoginRequest *)loginReq onSuccess:(successCallback)success andfailure:(failureCallback)failure;
- (void)registerUser:(RegisterRequest *)registerReq onSuccess:(successCallback)success andfailure:(failureCallback)failure;
- (void)logout:(BaseRequest *)request onSuccess:(successCallback)success andFailure:(failureCallback)failure;
- (void)changePassword:(PasswordChangeRequest *)pwdChangeReq onSuccess:(successCallback)success andfailure:(failureCallback)failure;
- (void)getUser:(NSString *)nic onSuccess:(successCallback)success andfailure:(failureCallback)failure;
- (void)getLookupsOnSuccess:(successCallback)success andfailure:(failureCallback)failure;

@end
