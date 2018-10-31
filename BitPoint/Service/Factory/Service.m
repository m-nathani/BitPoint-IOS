//  Created on 10/26/18.

#import "Service.h"

@implementation Service

#pragma mark setup

- (void)load:(NSArray*)services{
    for (NSNumber *serviceType in services) {
        switch (serviceType.integerValue) {
            case ServiceTypeAuth:
                [self loadAuthService];
                break;
                
            case ServiceTypeUser:
                [self loadUserService];
                break;
            case ServiceTypeBlockchain:
                [self loadBlockchainService];
                break;
            default:
                break;
        }
    }
}


+ (Service*)get:(id)_delegate{
    Service *instance = [Service new];
    return instance;
}


-(void)loadAuthService{
    if(self.auth != nil)
        return;
    
    self.auth = [[AuthService alloc] init];
}

-(void)loadUserService{
    if(self.user != nil)
        return;
    
    self.user = [[UserService alloc] init];
}

-(void)loadBlockchainService{
    if(self.user != nil)
        return;
    
    self.blockchain = [[BlockchainService alloc] init];
}


@end
