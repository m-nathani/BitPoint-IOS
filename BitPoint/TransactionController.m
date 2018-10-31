//  Created on 10/30/18.

#import "TransactionController.h"
#import "MineBlockRequest.h"
#import "User.h"
#import "UserDefaults.h"
#import "TransactionView.h"
#import "LookupResponse.h"

@interface TransactionController ()

@end

@implementation TransactionController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Transfer Points";
    
    [self loadServices:@[@(ServiceTypeAuth),@(ServiceTypeBlockchain)]];
    [self getLookupsFromService];
}

- (void)getLookupsFromService {
    [self showLoader];
    [service.auth getLookupsOnSuccess:^(LookupResponse *response) {
        [self hideLoader];
        [(TransactionView *)self.view setLookups:response.lookups];
        
    } andfailure:^(NSError *error) {
        [self hideLoader];
        [self onServiceResponseFailure:error];
    }];
}

- (void)transferPointsInBlockChain:(Lookup *)lookup toNic:(NSString *)toNic {
    [self showLoader];
    MineBlockRequest *blockToMine = [MineBlockRequest new];
    blockToMine.toNic = toNic;
    blockToMine.fromNic = [[UserDefaults getUser] NIC];
    blockToMine.lookup = lookup;
    
    [service.blockchain mineBlock:blockToMine onSuccess:^(id response) {
        [self hideLoader];
        [Alert showAlertWithMessage:@"Bitpoints transfered successfully!"];
    } andfailure:^(NSError *error) {
        [self hideLoader];
        [self onServiceResponseFailure:error];
    }];

}
@end
