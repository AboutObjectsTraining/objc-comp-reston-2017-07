#import <XCTest/XCTest.h>
#import "Person.h"

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
//    Person *fred = [[Person alloc] init];
    NSLog(@"Yay!");
}

- (void)testDoSomethingElseAmazing {
    NSLog(@"Wheee!");
}

@end
