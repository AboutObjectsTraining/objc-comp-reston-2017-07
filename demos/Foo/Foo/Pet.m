#import "Pet.h"

@implementation Pet

- (NSString *)breed {
    return _breed;
}

- (void)setBreed:(NSString *)aBreed {
    _breed = [aBreed copy];
}

- (NSString *)description {
    return [NSString stringWithFormat:
            @"type: %@, breed: %@",
            [self class], [self breed]];
}

@end
