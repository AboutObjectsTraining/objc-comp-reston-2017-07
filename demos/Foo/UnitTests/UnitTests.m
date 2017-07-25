#import <XCTest/XCTest.h>
#import "Person.h"
#import "Pet.h"

@interface UnitTests : XCTestCase @end


@implementation UnitTests

- (void)setUp {
    [super setUp];
    putchar('\n');
}
- (void)tearDown {
    putchar('\n');
    [super tearDown];
}

- (void)testDoSomethingAmazing {
    Pet *pet = [[Pet alloc] init];
    [pet setName:@"Rover"];
    [pet setBreed:@"Lab"];
    NSLog(@"%@", pet);
}

- (void)testDoSomethingElseAmazing {
    NSLog(@"Wheee!");
}

@end
