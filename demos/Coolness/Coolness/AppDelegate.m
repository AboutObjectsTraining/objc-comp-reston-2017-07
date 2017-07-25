#import "AppDelegate.h"
#import "CLNCoolViewController.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    CGRect frameRect = [[UIScreen mainScreen] bounds];
    UIWindow *myWindow = [[UIWindow alloc] initWithFrame:frameRect];
    [self setWindow:myWindow];
    
    [myWindow setRootViewController:[[CLNCoolViewController alloc] init]];
    
    [myWindow setBackgroundColor:[UIColor lightGrayColor]];
    [myWindow makeKeyAndVisible];
}

@end
