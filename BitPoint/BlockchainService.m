//  Created on 10/30/18.

#define kBlock(nic) [NSString stringWithFormat:@"points/%@",nic]
#define kMineBlock @"mineBlock"

#import "BlockchainService.h"
#import "BlockResponse.h"
#import "MineBlockRequest.h"
#import "Block.h"

@implementation BlockchainService

- (id)init {
    if (self = [super init]) {
        http = [[HttpRequestManager alloc] initWithURL:BLOCKCHAIN_SERVICE_URL];
        http.accessToken = [UserDefaults getAccessToken];
    }
    return self;
}

-(void) getBlock:(NSString *)nic onSuccess:(successCallback)success andfailure:(failureCallback)failure {
    [http get:kBlock(nic) success:^(id response) {
        success(response);
    } failure:failure response:[BlockResponse new]];
}

-(void) mineBlock:(MineBlockRequest *)block onSuccess:(successCallback)success andfailure:(failureCallback)failure {
    NSDictionary *parameters = [block getObject];
    [http post:kMineBlock parameters:@{@"data" : @{ @"to": @"4220128879545", @"from": @"422012121545", @"point": @10, @"reason": @"theft" } } success:^(id response) {
        success(response);
    } failure:failure entity:[Block new]];
}



@end
