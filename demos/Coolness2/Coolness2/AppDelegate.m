#import "AppDelegate.h"
#import "CLNCoolViewController.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.rootViewController = [[CLNCoolViewController alloc] initWithNibName:@"CoolStuff" bundle:nil];
    self.window.backgroundColor = UIColor.lightGrayColor;
    [self.window makeKeyAndVisible];
}

@end
