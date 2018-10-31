//  Created on 10/30/18.

#import "ProfileView.h"
#import "ProfileController.h"
#import "BlockResponse.h"
#import "User.h"

@interface ProfileView ()

@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblPoints;
@property (weak, nonatomic) IBOutlet UILabel *lblNic;
@property (weak, nonatomic) IBOutlet UILabel *lblGender;
@property (weak, nonatomic) IBOutlet UILabel *lblAccType;
@property (weak, nonatomic) IBOutlet UILabel *lblEmail;
@property (weak, nonatomic) IBOutlet UIButton *btnTransfer;


@end

@implementation ProfileView

-(void)viewDidLoad {
    
    [self populateUI];
    
}

- (void)populatePoints:(BlockResponse *)blockResponse {
    _lblPoints.text = (blockResponse.points) ? blockResponse.points.stringValue : @"0000" ;
}

- (void)populateUI {
    User *user = [UserDefaults getUser];
    _lblNic.text = user.NIC;
    _lblName.text = [user getFormattedName];
    _lblGender.text = user.gender;
    _lblEmail.text = user.email;
    _lblAccType.text = (user.userType == UserTypeGovt)? @"Government" : @"Citizen";
    
    if(user.userType == UserTypePublic) {
        [_btnTransfer setHidden:YES];
    }
}

- (IBAction)onRefreshTap:(id)sender {
    
}

- (IBAction)onTransferTap:(id)sender {
    [(ProfileController *)self.controller showTransferController];
}

@end
