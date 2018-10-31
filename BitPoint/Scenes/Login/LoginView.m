//
//  LoginView.m
//  iOSTemplate
//
//  Created by mohsin on 4/3/14.
//  Copyright (c) 2014 mohsin. All rights reserved.
//

#import "LoginController.h"
#import "LoginView.h"
#import <LocalAuthentication/LocalAuthentication.h>

@interface LoginView()

@property (nonatomic, weak) LoginController *controller;
@property (weak, nonatomic) IBOutlet UITextField *textfieldNIC;
@property (weak, nonatomic) IBOutlet UITextField *textfieldPass;

@end

@implementation LoginView
@dynamic controller;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear {
    _textfieldPass.text = @"test12345";
    _textfieldNIC.text = @"422012121545";
}

#pragma - Actions

- (IBAction)onLoginTap:(id)sender {
    [self.controller LoginUser:_textfieldNIC.text andPass:_textfieldPass.text];
}

- (IBAction)onRegisterNowTap:(id)sender {
    [self.controller showRegistrationController];
}

@end
