//  Created on 10/30/18.

#import "BaseRequest.h"
#import "Enum.h"

NS_ASSUME_NONNULL_BEGIN

@interface RegisterRequest : BaseRequest

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *NIC;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, assign) NSString *gender;
@property (nonatomic, assign) UserType userType;
@property (nonatomic, strong) NSString *email;

@end

NS_ASSUME_NONNULL_END
