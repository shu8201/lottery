//
//  COCHallController.m
//  彩票
//
//  Created by MAC on 2022/9/28.
//

#import "COCHallController.h"

@interface COCHallController ()
@property (nonatomic, strong) UIView *tabView;
@property (nonatomic, strong) UIImageView *imgView;

@end

@implementation COCHallController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImage *image = [UIImage imageNamed:@"CS50_activity_image"];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(btnClick)];
    
    self.navigationItem.leftBarButtonItem = item;
   
}

- (void)btnClick{
    
    UIView *view = [[UIView alloc] initWithFrame:kScreenSize];
    view.backgroundColor = [UIColor blackColor];
    view.alpha = 0.5;
    self.tabView = view;
    [self.tabBarController.view addSubview:view];
    
    UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"showActivity"]];
    imgView.userInteractionEnabled = YES;
    imgView.center = view.center;
    
    UIButton *btn = [[UIButton alloc] init];
    UIImage *image = [UIImage imageNamed:@"alphaClose"];
    
    btn.frame = CGRectMake(imgView.bounds.size.width - image.size.width, 0, 0, 0);
    [btn setImage:image forState:UIControlStateNormal];
    [btn sizeToFit];
    
    
    [btn addTarget:self action:@selector(closeBtn) forControlEvents:UIControlEventTouchUpInside];
    self.imgView = imgView;
    [imgView addSubview:btn];
    
    
    
    [self.tabBarController.view addSubview:imgView];
    
}

- (void)closeBtn{
    [UIView animateWithDuration:0.25 animations:^{
        [self.tabView removeFromSuperview];
        [self.imgView removeFromSuperview];
    }];

}

@end
