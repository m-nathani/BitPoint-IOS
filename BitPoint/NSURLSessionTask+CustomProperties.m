//
//  NSURLSessionTask+CustomProperties.m
//  BadgerPoint
//
//  Created by Ali Zohair on 03/02/2016.
//  Copyright © 2016 Ali Zohair. All rights reserved.
//

#import "NSURLSessionTask+CustomProperties.h"
#import <objc/runtime.h>

@implementation NSURLSessionTask (CustomProperties)

-(void) setOnSuccessCallback:(successCallback)onSuccessCallback {
    
    objc_setAssociatedObject(self, @selector(onSuccessCallback), onSuccessCallback, OBJC_ASSOCIATION_COPY);
}
-(successCallback) onSuccessCallback {
    
    return objc_getAssociatedObject(self, @selector(onSuccessCallback));
}

-(void) setOnFailureCallback:(failureCallback)onFailureCallback {
    
    objc_setAssociatedObject(self, @selector(onFailureCallback), onFailureCallback, OBJC_ASSOCIATION_COPY);
}

-(failureCallback) onFailureCallback {
    
    return objc_getAssociatedObject(self, @selector(onFailureCallback));
}

@end
