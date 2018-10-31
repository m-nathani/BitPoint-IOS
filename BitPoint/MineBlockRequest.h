//  Created on 10/30/18.

#import "BaseRequest.h"

@class Lookup;

NS_ASSUME_NONNULL_BEGIN

@interface MineBlockRequest : BaseRequest

@property (nonatomic, strong) NSString *toNic;
@property (nonatomic, strong) NSString *fromNic;

@property (nonatomic, strong) Lookup *lookup;

@end

NS_ASSUME_NONNULL_END
