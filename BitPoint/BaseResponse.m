//
//  BaseResponse.m
//  iOSTemplate
//
//  Created by mohsin on 11/5/14.
//  Copyright (c) 2014 mohsin. All rights reserved.
//

#import "BaseResponse.h"

@implementation BaseResponse

-(id)init{
    list = [[NSMutableArray alloc] init];
    return self;
}

-(void)set:(id)input {
    _status      = [ParserUtils boolValue:input key:KEY_STATUS];
    _code        = [ParserUtils intValue:input key:KEY_CODE];
    _message     = [ParserUtils stringValue:input key:KEY_MESSAGE_];
}

-(NSArray*)getList{
    return list;
}

-(id)get{
    return nil;
}


@end
