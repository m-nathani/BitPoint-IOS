//  Created on 10/30/18.

#import "BlockResponse.h"

@implementation BlockResponse

- (void) set:(NSDictionary*)input {
    [super set:input];
    
    _points = [ParserUtils numberValue:input key:@"point"];
}


@end
