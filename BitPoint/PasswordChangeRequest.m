//
//  PasswordChangeRequest.m
//  HughesNet
//
//  Created by Muhammad Hamiz Ahmed on 3/29/16.
//
//

#import "PasswordChangeRequest.h"

@implementation PasswordChangeRequest

- (id)getObject
{
    NSMutableDictionary *obj = [super getObject];
//    [obj setObject:_oldPassword forKey:KEY_OLDPWD];
//    [obj setObject:_passwordNew forKey:KEY_NEWPWD];
    return obj;
}

@end
