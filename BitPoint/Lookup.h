//  Created on 10/30/18.

#import "BaseEntity.h"

NS_ASSUME_NONNULL_BEGIN

@interface Lookup : BaseEntity

@property(nonatomic, strong) NSNumber *identifier;
@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSNumber *point;


@end

NS_ASSUME_NONNULL_END
