//  Created on 10/29/18.

#import "RegistrationController.h"
#import "RegisterRequest.h"
#import "User.h"

@interface RegistrationController ()

@end

@implementation RegistrationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadServices:@[@(ServiceTypeAuth)]];
    self.title = @"Register";

}

- (void)registerUser:(RegisterRequest *)request {
    [self showLoader];
    [service.auth registerUser:request onSuccess:^(User *response) {
        [self hideLoader];
        [[AppDelegate getInstance] loginWithUser:response];
    } andfailure:^(NSError *error) {
        [self hideLoader];
        [self onServiceResponseFailure:error];
    }];
}

@end
