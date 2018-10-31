
//  Created on 10/30/18.

#import "LookupResponse.h"
#import "Lookup.h"

@implementation LookupResponse

- (void) set:(NSArray*)input {
    [super set:input];
    NSMutableArray *lookups = [NSMutableArray new];
    for(NSDictionary *lookupDic in input) {
        Lookup *lookup = [Lookup new];
        [lookup set:lookupDic];
        
        [lookups addObject:lookup];
    }
    
    _lookups = lookups;
}

@end
