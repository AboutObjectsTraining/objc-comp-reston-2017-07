#import <Foundation/Foundation.h>

@protocol Growling
- (void)growl;

@optional

- (void)bark;

@end


@interface Pet : NSObject {
    NSString *_breed;
}

- (NSString *)breed;
- (void)setBreed:(NSString *)aBreed;

@end
