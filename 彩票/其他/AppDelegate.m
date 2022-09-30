//
//  AppDelegate.m
//  彩票
//
//  Created by MAC on 2022/9/28.
//  123

#import "AppDelegate.h"
#import "COCTabBarController.h"

@interface AppDelegate ()


@end

@implementation AppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:kScreenSize];
    
    COCTabBarController *tabbarController = [[COCTabBarController alloc] init];

    self.window.rootViewController  = tabbarController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}




@end
