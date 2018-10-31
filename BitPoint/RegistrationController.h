//  Created on 10/29/18.

#import "BaseController.h"

@class  RegisterRequest;

NS_ASSUME_NONNULL_BEGIN

@interface RegistrationController : BaseController

- (void)registerUser:(RegisterRequest *)request;

@end

NS_ASSUME_NONNULL_END
