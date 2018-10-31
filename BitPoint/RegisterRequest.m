//  Created on 10/30/18.

#import "RegisterRequest.h"

#define FIRST_NAME @"firstName"
#define LAST_NAME @"lastName"
#define NIC @"nic"
#define PASSWORD @"password"
#define GENDER @"gender"
#define USERTYPE @"userType"
#define EMAIL @"email"

@implementation RegisterRequest

- (id)getObject
{
    NSMutableDictionary *obj = [super getObject];
    [obj setObject:_NIC forKey:NIC];
    [obj setObject:_password forKey:PASSWORD];
    [obj setObject:_firstName forKey:FIRST_NAME];
    [obj setObject:_lastName forKey:LAST_NAME];
    [obj setObject:_gender forKey:GENDER];
    [obj setObject:_email forKey:EMAIL];
    [obj setObject:@(_userType) forKey:USERTYPE];

    return obj;
}


@end
