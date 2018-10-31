//  Created on 10/26/18.

#import <Foundation/Foundation.h>

@interface StringUtils : NSObject

+(BOOL)isEmptyOrNull:(NSString*)value;

+(NSString*)validateForNull:(NSString*)value;

+(BOOL)validateEmail:(NSString*)candidate;

+(NSString *) getStringFromInt:(int) integer;

@end
