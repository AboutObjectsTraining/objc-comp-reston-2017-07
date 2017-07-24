#import "Person.h"

@implementation Person

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
{
    self = [super init];
    
    self.firstName = [firstName copy];
    self.lastName = [lastName copy];
    
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:
            @"class: %@ first name: %@, last name: %@, age: %d",
            self.class, self.firstName, self.lastName, self.age];
}

@end
