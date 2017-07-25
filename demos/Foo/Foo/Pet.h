#import <Foundation/Foundation.h>

@protocol Growling
- (void)growl;

@optional

- (void)bark;

@end


@interface Pet : NSObject

@property (copy, nonatomic) NSString *breed;
@property (copy, nonatomic) NSString *name;

@end

//@interface Pet : NSObject {
//    NSString *_breed;
//    NSString *_name;
//}
//
//- (NSString *)breed;
//- (void)setBreed:(NSString *)aBreed;
//
//- (NSString *)name;
//- (void)setName:(NSString *)newValue;
//
//@end
