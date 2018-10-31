//  Created on 10/29/18.

#import "LoginResponse.h"

@implementation LoginResponse

- (void) set:(NSDictionary*)input {
    [super set:input];
    
    _authToken = [ParserUtils stringValue:input key:KEY_ACCESS_TOKEN];
}

@end
