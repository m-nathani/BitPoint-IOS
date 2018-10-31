//  Created on 10/30/18.

#import "BaseService.h"

NS_ASSUME_NONNULL_BEGIN

@class MineBlockRequest;

@interface BlockchainService : BaseService

-(void) getBlock:(NSString *)nic onSuccess:(successCallback)success andfailure:(failureCallback)failure;
-(void) mineBlock:(MineBlockRequest *)block onSuccess:(successCallback)success andfailure:(failureCallback)failure;

@end

NS_ASSUME_NONNULL_END
