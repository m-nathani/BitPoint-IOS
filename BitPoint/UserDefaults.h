//
//  UserDefaults.h
//  HughesNet


#import <Foundation/Foundation.h>

@class User;

@interface UserDefaults : NSObject

+ (void)setAccessToken:(NSString *)token;
+ (NSString *)getAccessToken;
+ (void)setUserData:(User *)user;
+ (User *)getUser;

@end
