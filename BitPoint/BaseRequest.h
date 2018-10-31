//
//  BaseRequest.h
//  HughesNet
//
//  Created by Irfan Gul on 25/03/2016.
//
//

#import <Foundation/Foundation.h>

@interface BaseRequest : NSObject

@property (strong, nonatomic) NSString *authToken;

- (void)set:(NSDictionary *)input;
- (id)getObject;

- (void)setObject:(id)object inDictionary:(NSMutableDictionary *)dictionary forKey:(NSString *)key;
- (void)setString:(NSString *)stringValue inDictionary:(NSDictionary *)dictionary forKey:(NSString *)key;
- (void)setNumber:(NSNumber *)numberValue inDictionary:(NSDictionary *)dictionary forKey:(NSString *)key;
- (void)setBoolean:(BOOL)boolValue inDictionary:(NSDictionary *)dictionary forKey:(NSString *)key;

@end
