//
//  AuthResponse.m
//  HughesNet
//
//  Created by Muhammad Hamiz Ahmed on 3/21/16.
//
//

#import "AuthResponse.h"

@implementation AuthResponse

- (void) set:(NSDictionary*)input {
    [super set:input];
    
    _authToken = [ParserUtils stringValue:input key:KEY_ACCESS_TOKEN];
}

@end
