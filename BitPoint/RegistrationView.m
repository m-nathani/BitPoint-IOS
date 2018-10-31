//  Created on 10/29/18.

#import "RegistrationView.h"
#import "RegistrationController.h"
#import "RegisterRequest.h"
#import "ActionSheetPicker.h"

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
    regReq.userType = ([_textFieldUserType.text isEqualToString:@"Government"]) ? 1 : 2;

    
    [(RegistrationController *)self.controller registerUser:regReq];
    
}

- (IBAction)onRegisterTap:(id)sender {
    [self registerUser];
}

- (IBAction)onGenderFieldTap:(id)sender {
    
    [ActionSheetStringPicker showPickerWithTitle:@"Select gender"
                                            rows:@[@"male",@"female"]
                                initialSelection:0
                                       doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
                                           _textFieldGender.text = selectedValue;
                                       }
                                     cancelBlock:^(ActionSheetStringPicker *picker) {
                                         NSLog(@"Block Picker Canceled");
                                     }
                                          origin:self];
}

- (IBAction)onUserTypeFieldTap:(id)sender {
    
    [ActionSheetStringPicker showPickerWithTitle:@"Select user type"
                                            rows:@[@"Government",@"Citizen"]
                                initialSelection:0
                                       doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
                                           _textFieldUserType.text = selectedValue;
                                       }
                                     cancelBlock:^(ActionSheetStringPicker *picker) {
                                         NSLog(@"Block Picker Canceled");
                                     }
                                          origin:self];
}

@end
