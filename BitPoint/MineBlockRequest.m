//  Created on 10/30/18.

#import "MineBlockRequest.h"
#import "Lookup.h"

@implementation MineBlockRequest

- (id)getObject
{
    NSMutableDictionary *obj = [super getObject];
    [obj setObject:_toNic forKey:@"to"];
    [obj setObject:_fromNic forKey:@"from"];
    [obj setObject:_lookup.point forKey:@"point"];
    [obj setObject:_lookup.name forKey:@"reason"];
    
    return obj;
}

@end
