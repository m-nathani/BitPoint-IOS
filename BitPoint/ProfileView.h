//  Created on 10/30/18.

#import "BaseView.h"

@class BlockResponse;

NS_ASSUME_NONNULL_BEGIN

@interface ProfileView : BaseView

- (void)populatePoints:(BlockResponse *)blockResponse;

@end

NS_ASSUME_NONNULL_END
