//
//  COCNavigationController.m
//  彩票
//
//  Created by MAC on 2022/9/28.
//

#import "COCNavigationController.h"

@interface COCNavigationController ()

@end

@implementation COCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    [self.navigationBar setTitleTextAttributes: @{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    [self.navigationBar setTintColor:[UIColor whiteColor]];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}

@end
