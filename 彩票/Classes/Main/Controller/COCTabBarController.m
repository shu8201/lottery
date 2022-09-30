//
//  COCTabBarController.m
//  彩票
//
//  Created by MAC on 2022/9/28.
//

#import "COCTabBarController.h"
#import "COCTabBar.h"

@interface COCTabBarController ()


@end

@implementation COCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *v1 = [self loadSubViewControllerWithSBName:@"Hall"];
    UIViewController *v2 = [self loadSubViewControllerWithSBName:@"Arena"];
    UIViewController *v3 = [self loadSubViewControllerWithSBName:@"Discovery"];
    UIViewController *v4 = [self loadSubViewControllerWithSBName:@"History"];
    UIViewController *v5 = [self loadSubViewControllerWithSBName:@"MyLottery"];

    self.viewControllers = @[v1,v2,v3,v4,v5];
    
    COCTabBar *tabbar = [[COCTabBar alloc] init];
    tabbar.frame = self.tabBar.frame;
    
    
    for (int i = 0; i < self.viewControllers.count; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"TabBar%d",i+1]];
        UIImage *imagePress = [UIImage imageNamed:[NSString stringWithFormat:@"TabBar%dSel",i+1]];
        
        [tabbar addButtonWtihImage:image isImageSel:imagePress];
        
    }
    
    tabbar.clickBlock = ^(NSInteger index) {
        self.selectedIndex = index;
    };
    
    [self.view addSubview:tabbar];
    
}



- (UIViewController*)loadSubViewControllerWithSBName:(NSString *)name{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:name bundle:nil];
    return [sb instantiateInitialViewController];
}

@end
