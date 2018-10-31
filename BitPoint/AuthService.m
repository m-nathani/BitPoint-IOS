//
//  AuthService.m
//  10Pearls
//
//  Created by Muhammad Hamiz Ahmed on 3/19/16.
//  Copyright (c) 2016 HughesNet. All rights reserved.
//

#import "AuthService.h"
#import "User.h"
#import "AuthResponse.h"
#import "LoginResponse.h"
#import "RegisterRequest.h"
#import "Constant.h"
#import "UserDefaults.h"
#import "LookupResponse.h"

#define kSignup @"users"
#define kLogin @"login"
#define kLookups @"lookups"
#define kLookups @"lookups"
#define kPwdChange @"changePassword.pyt"
#define kGetUsers [NSString stringWithFormat:@"users/%@",nic]

@implementation AuthService

-(void) getLookupsOnSuccess:(successCallback)success andfailure:(failureCallback)failure {
    
    [http get:kLookups success:^(id response) {
        success(response);
    } failure:failure response:[LookupResponse new]];
}


-(void) registerUser:(RegisterRequest *)registerReq onSuccess:(successCallback)success andfailure:(failureCallback)failure {
    
    NSDictionary *parameters = [registerReq getObject];
    
    [http post:kSignup parameters:parameters success:^(id response) {
        success(response);
    }failure:failure entity:[User new]];
}

-(void) login:(LoginRequest *)loginReq onSuccess:(successCallback)success andfailure:(failureCallback)failure {
    
    NSDictionary *parameters = [loginReq getObject];
    
    [http post:kLogin parameters:parameters success:^(id response) {
        success(response);
    }failure:failure response:[User new]];
}

-(void) getUser:(NSString *)nic onSuccess:(successCallback)success andfailure:(failureCallback)failure {
    [http get:kGetUsers success:^(id response) {
        success(response);
     } failure:failure entity:[User new]];
}

- (void) logout:(BaseRequest *)request onSuccess:(successCallback)success andFailure:(failureCallback)failure {
    NSDictionary *params = [request getObject];
//    [http post:kLogout parameters:params success:success failure:failure response:[BaseResponse new]];
}

-(void) changePassword:(PasswordChangeRequest *)pwdChangeReq onSuccess:(successCallback)success andfailure:(failureCallback)failure {    
    NSDictionary *parameters = [pwdChangeReq getObject];
    [http post:kPwdChange parameters:parameters success:success failure:failure response:[BaseResponse new]];
}

@end
