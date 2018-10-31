//  Created on 10/26/18.

#import <UIKit/UIKit.h>

@class LoginResponse, User;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *mainNavigationController;

+(AppDelegate*)getInstance;

- (void)loginWithUser:(User *)user;
- (void)logoutUser;

@end

