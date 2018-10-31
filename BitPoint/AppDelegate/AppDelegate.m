//  Created on 10/26/18.

#import "AppDelegate.h"
#import "LoginController.h"
#import "ProfileController.h"
#import "LoginResponse.h"
#import "User.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

+(AppDelegate*)getInstance {
    return (AppDelegate*)[[UIApplication sharedApplication] delegate];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self setAppearence];
    [self setWindowWithController:[self getInitialController]];
    
    return YES;
}

- (UIViewController *)getInitialController {
    UIViewController *firstController = [LoginController new];
    if([UserDefaults getAccessToken] != nil) {
        firstController = [ProfileController new];
    }
    return firstController;
}

- (void)loginWithUser:(User *)user {
    [UserDefaults setUserData:user];
    [UserDefaults setAccessToken:user.authToken];
    [self setWindowWithController:[ProfileController new]];
}

- (void)logoutUser {
    [self setWindowWithController:[LoginController new]];
    [UserDefaults setAccessToken:nil];
    [UserDefaults setUserData:nil];
}

- (void)setWindowWithController:(UIViewController *)initialController {
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _mainNavigationController = [[UINavigationController alloc]initWithRootViewController:initialController];
    [_window setRootViewController:_mainNavigationController];
    [_window makeKeyAndVisible];
}
- (void)setAppearence {

    [[UINavigationBar appearance] setTintColor:[Color navBarTintColor]];
    [[UINavigationBar appearance] setBarTintColor:[Color backgroundColor]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSFontAttributeName:[Font normal], NSForegroundColorAttributeName: [Color navBarTintColor]}];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
