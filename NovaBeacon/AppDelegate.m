#import "AppDelegate.h"
#import "BeaconViewController.h"

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[BeaconViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}
@end
