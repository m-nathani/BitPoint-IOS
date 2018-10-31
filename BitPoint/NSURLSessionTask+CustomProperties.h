//
//  NSURLSessionTask+CustomProperties.h
//  BadgerPoint
//
//  Created by Ali Zohair on 03/02/2016.
//  Copyright © 2016 Ali Zohair. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLSessionTask (CustomProperties)

#if NS_BLOCKS_AVAILABLE
typedef void (^successCallback)(id response);
typedef void (^failureCallback)(NSError *error);
#endif

@property (copy) successCallback onSuccessCallback;
@property (copy) failureCallback onFailureCallback;

@end
