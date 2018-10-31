//  Created on 10/26/18.


#import "BaseService.h"
#import "UserDefaults.h"
#import "Constant.h"

@implementation BaseService



- (id)init {
    if (self = [super init]) {
         http = [HttpRequestManager new];
         http.accessToken = [UserDefaults getAccessToken];
    }
    return self;
}


@end
