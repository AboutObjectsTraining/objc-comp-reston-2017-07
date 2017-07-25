#import "Pet.h"

@implementation Pet

- (NSString *)description {
    return [NSString stringWithFormat:
            @"type: %@, name: %@, breed: %@",
            [self class], [self name], [self breed]];
}

@end
