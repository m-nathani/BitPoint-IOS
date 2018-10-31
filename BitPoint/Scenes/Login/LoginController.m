//
//  LoginController.m
//  iOSTemplate
//
//  Created by mohsin on 4/3/14.
//  Copyright (c) 2014 mohsin. All rights reserved.
//

#import "LoginController.h"
#import "LoginView.h"
#import "AuthService.h"
#import "LoginResponse.h"
#import "Alert.h"
#import "LoginRequest.h"
#import "LoginView.h"
#import "AppDelegate.h"
#import "RegistrationController.h"

#define TEXT_SIGNING_IN @"Signing In..."

@interface LoginController ()
@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadServices:@[@(ServiceTypeAuth)]];
    self.title = @"Login";
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}


- (void)LoginUser:(NSString *)nic andPass:(NSString *)password {
    LoginRequest *loginReq = [[LoginRequest alloc]init];
    loginReq.nicNumber = nic;
    loginReq.password = password;
    
    [self showLoader];
    [service.auth login:loginReq onSuccess:^(User *response) {
        [self hideLoader];
        [[AppDelegate getInstance] loginWithUser:response];
    } andfailure:^(NSError *error) {
        [self hideLoader];
        [self onServiceResponseFailure:error];
    }];
}


- (void)showRegistrationController {
    [self.navigationController pushViewController:[RegistrationController new] animated:YES];
}
@end
