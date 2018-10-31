//  Created on 10/30/18.

#import "ProfileController.h"
#import "AppDelegate.h"
#import "TransactionController.h"
#import "User.h"
#import "ProfileView.h"

@interface ProfileController ()

@end

@implementation ProfileController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setNavigationButtons];
    self.title = @"Profile";
    
    [self loadServices:@[@(ServiceTypeBlockchain)]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self getPointsFromBlockChain];
}

- (void)setNavigationButtons {
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Logout" style:UIBarButtonItemStylePlain target:self action:@selector(onLogout:)];
}

- (void)onLogout:(id)sender {
    [[AppDelegate getInstance] logoutUser];
}

- (void)getProfile:(RegisterRequest *)request {
    [self showLoader];
    [service.auth registerUser:request onSuccess:^(User *response) {
        [self hideLoader];
        [[AppDelegate getInstance] loginWithUser:response];
    } andfailure:^(NSError *error) {
        [self hideLoader];
        [self onServiceResponseFailure:error];
    }];
}

- (void)getPointsFromBlockChain {
    User *user = [UserDefaults getUser];
    
    [self showLoader];
    [service.blockchain getBlock:user.NIC onSuccess:^(id response) {
        [self hideLoader];
        [(ProfileView *)self.view populatePoints:response];
    } andfailure:^(NSError *error) {
        [self hideLoader];
        [self onServiceResponseFailure:error];
    }];
}

- (void)showTransferController {
    [self.navigationController pushViewController:[TransactionController new] animated:YES];
}

@end
