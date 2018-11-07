//
//  User.h
//  iOSTemplate
//
//  Created by mohsin on 4/3/14.
//  Copyright (c) 2014 mohsin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseEntity.h"
#import "Enum.h"


@interface User : BaseEntity

@property(nonatomic, strong) NSNumber *identifier;
@property(nonatomic,strong) NSString *firstName;
@property(nonatomic,strong) NSString *lastName;
@property(nonatomic,strong) NSString *email;
@property(nonatomic,strong) NSString *phone;
@property (nonatomic, strong) NSString *NIC;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, assign) UserType userType;
@property (nonatomic, nonatomic) NSString* authToken;

-(NSString*)getFormattedName;

@end
