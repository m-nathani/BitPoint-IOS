//
//  LoginRequest.h
//  HughesNet
//
//  Created by Irfan Gul on 25/03/2016.
//
//

#import "BaseRequest.h"

@interface LoginRequest : BaseRequest

@property (nonatomic, strong) NSString *nicNumber;
@property (nonatomic, strong) NSString *password;

@end

