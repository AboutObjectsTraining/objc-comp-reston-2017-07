#import <Foundation/Foundation.h>

@interface Person : NSObject

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName;

@property (copy) NSString *firstName;
@property (copy) NSString *lastName;
@property (assign) int age;

@end
