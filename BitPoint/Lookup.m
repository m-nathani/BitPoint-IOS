//  Created on 10/30/18.

#import "Lookup.h"
#import "ParserUtils.h"

@implementation Lookup

-(void)set:(NSDictionary*)input{
    
    self.name = [ParserUtils stringValue:input key:@"name"];
    self.identifier = [ParserUtils numberValue:input key:@"id"];
    self.point = [ParserUtils numberValue:input key:@"point"];
}

@end
