//  Created on 10/30/18.

#import "BaseController.h"

@class Lookup;

NS_ASSUME_NONNULL_BEGIN

@interface TransactionController : BaseController

- (void)transferPointsInBlockChain:(Lookup *)lookup toNic:(NSString *)toNic;

@end

NS_ASSUME_NONNULL_END
