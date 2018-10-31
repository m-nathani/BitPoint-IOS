//
//  BaseResponse.h
//  iOSTemplate
//
//  Created by mohsin on 11/5/14.
//  Copyright (c) 2014 mohsin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseResponse : NSObject{
    NSMutableArray *list;
    NSString *key;
    id value;
}

@property (assign, getter=isSuccessful) BOOL status;
@property (assign, nonatomic) NSString* message;
@property (assign, nonatomic) NSInteger code;
@property (assign, nonatomic) BOOL tokenActive;

-(void)set:(id)input;
-(NSArray*)getList;
-(id)get;

@end
