//
//  UserDefaults.m
//  HughesNet


#import "UserDefaults.h"
#import "User.h"

#define USER_DEFAULTS         [NSUserDefaults standardUserDefaults]
#define KEY_USERDEFAULTS_USER_DATA @"user"

@implementation UserDefaults

+ (void)setAccessToken:(NSString *)token {
    
    [USER_DEFAULTS setObject:token forKey:KEY_ACCESS_TOKEN];
    [USER_DEFAULTS synchronize];
}

+ (NSString *)getAccessToken {
    return [USER_DEFAULTS objectForKey:KEY_ACCESS_TOKEN];
}

+ (void)setUserData:(User *)user {
    
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:user];
    [USER_DEFAULTS setObject:data forKey:KEY_USERDEFAULTS_USER_DATA];
    [USER_DEFAULTS synchronize];
}

+ (User *)getUser {
    
    if ([USER_DEFAULTS objectForKey:KEY_USERDEFAULTS_USER_DATA]) {
        return [NSKeyedUnarchiver
                unarchiveObjectWithData:[USER_DEFAULTS
                                         objectForKey:KEY_USERDEFAULTS_USER_DATA]];
    }
    return nil;
}

@end
