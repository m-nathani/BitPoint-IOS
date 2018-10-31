//  Created on 10/29/18.

#import "RegistrationView.h"
#import "RegistrationController.h"
#import "RegisterRequest.h"

@interface RegistrationView ()

@property (weak, nonatomic) IBOutlet UITextField *textFieldNIC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldEmail;
@property (weak, nonatomic) IBOutlet UITextField *textFieldFirstName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldLastName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPassword;
@property (weak, nonatomic) IBOutlet UITextField *textFieldGender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldUserType;

@end

@implementation RegistrationView

- (void)registerUser {
    RegisterRequest *regReq = [RegisterRequest new];
    regReq.firstName = _textFieldFirstName.text;
    regReq.lastName = _textFieldLastName.text;
    regReq.email = _textFieldEmail.text;
    regReq.NIC = _textFieldNIC.text;
    regReq.password = _textFieldPassword.text;
    regReq.gender = _textFieldGender.text;
    regReq.userType = _textFieldUserType.text.integerValue;
    
    [(RegistrationController *)self.controller registerUser:regReq];
    
}

- (IBAction)onRegisterTap:(id)sender {
    [self registerUser];
}

@end
