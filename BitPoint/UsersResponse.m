//
//  UsersResponse.m
//  iOSTemplate
//
//  Created by mohsin on 11/5/14.
//  Copyright (c) 2014 mohsin. All rights reserved.
//

#import "UsersResponse.h"
#import "User.h"
#import "ParserUtils.h"
@implementation UsersResponse

-(void)set:(NSArray*)input{

    NSLog(@"%@", input);
    
    for (NSDictionary *object in input) {
        User *user = [User new];
        [user set:object];
        [list addObject:user];
    }
}

@end
