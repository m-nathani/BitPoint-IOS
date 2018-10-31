//  Created on 10/26/18.

#import <Foundation/Foundation.h>
#import "AuthService.h"
#import "UserService.h"
#import "BlockchainService.h"

typedef enum {
    ServiceTypeAuth        = 0,
    ServiceTypeUser        = 1,
    ServiceTypeBlockchain  = 2,


}ServiceType;


@interface Service : NSObject{
    NSDictionary *_servicesMap;
    id _delegate;
}

@property(nonatomic,retain) AuthService *auth;
@property(nonatomic,retain) UserService *user;
@property(nonatomic,retain) BlockchainService *blockchain;

- (void)load:(NSArray*)services;

+ (Service*)get:(id)_delegate;

@end
