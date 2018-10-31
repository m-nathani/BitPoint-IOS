//  Created on 10/26/18.


#import <Foundation/Foundation.h>
#import "HttpRequestManager.h"

typedef void (^successCallback)(id response);
typedef void (^failureCallback)(NSError *error);

@interface BaseService : NSObject{
    HttpRequestManager *http;
}

@end
