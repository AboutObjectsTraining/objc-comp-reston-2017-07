#import <Foundation/Foundation.h>

#import "Person.h"
#import "Pet.h"
#import "Dog.h"
#import "Cat.h"
#import "NSObject+NSObject_Additions.h"

void DoPersonStuff(void) {
    Person *fred = [[Person alloc] initWithFirstName:@"Fred" lastName:@"Smith"];
    NSLog(@"%@", fred);
}

void DoDogStuff() {
    Dog *rover = [[Dog alloc] init];
    [rover setBreed:@"Collie"];
    [rover AO_display];
    
    [rover growl];
    [rover bark];
    
    Cat *cat = [[Cat alloc] init];
    [cat setBreed:@"Siamese"];
    [cat AO_display];
    
//    id anotherCat = cat;
//    [anotherCat growl];
    
    
    if ([cat isKindOfClass:[Pet class]]) {
        
    }
    
    if ([cat conformsToProtocol:@protocol(Growling)]) {
        
        [cat growl];
        
        if ([cat respondsToSelector:@selector(bark)]) {
            [cat bark];
        }
    }
}

void DoArrayStuff() {
    Cat *cat = [[Cat alloc] init];
    NSArray *stuff = @[@"Hello", @42, cat];
    
    for (id currObj in stuff) {
        NSLog(@"%@", currObj);
        if ([currObj respondsToSelector:@selector(growl)]) {
            [currObj growl];
        }
    }
}

void PlayWithFoundationInitMethods() {
    NSString *s = [NSString alloc];
    NSLog(@"%@", s);
    
    s = [s initWithString:@"Hello World!"];
    NSLog(@"%@", s);
    
    NSString *s2 = [NSString stringWithFormat:@""];
    NSLog(@"%@", s2);
}

void DoPetStuff() {
    Pet *pet = [[Pet alloc] init];
    NSLog(@"%@", [pet description]);
    NSLog(@"%@", [pet breed]);
    
    [pet setBreed:@"Collie"];
    NSLog(@"%@", [pet breed]);
    NSLog(@"%@", pet);
}

int main(int argc, const char * argv[]) {
    PlayWithFoundationInitMethods();
//    DoArrayStuff();
//    DoDogStuff();
//    DoPetStuff();
//    DoPersonStuff();
}
