//
//  PasswordChangeRequest.h
//  HughesNet
//
//  Created by Muhammad Hamiz Ahmed on 3/29/16.
//
//

#import "BaseRequest.h"

@interface PasswordChangeRequest : BaseRequest
@property (nonatomic, strong) NSString *oldPassword;
@property (nonatomic, strong) NSString *passwordNew;
@end
