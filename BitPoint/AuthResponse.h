//
//  AuthResponse.h
//  HughesNet
//
//  Created by Muhammad Hamiz Ahmed on 3/21/16.
//
//

#import "BaseResponse.h"

@interface AuthResponse : BaseResponse

@property (readonly, nonatomic) NSString* authToken;

@end
