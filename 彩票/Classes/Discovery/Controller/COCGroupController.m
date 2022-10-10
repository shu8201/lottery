//
//  COCGroupController.m
//  彩票
//
//  Created by MAC on 2022/10/8.
//

#import "COCGroupController.h"
#import "UIView+COCFrame.h"

@interface COCGroupController ()
@property (nonatomic, weak) UIView* blueView;

@end

@implementation COCGroupController

- (UIView*)blueView{
    if(!_blueView){
        UIView *view = [[UIView alloc] init];
        view.frame = CGRectMake(0, 0, kScreenWidth, 0);
        view.backgroundColor = [UIColor blueColor];
        [self.view addSubview:view];
        _blueView = view;
    }
    return _blueView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self blueView];
    [self.navigationController.navigationBar setTranslucent:NO];
}

//全部彩种点击事件
- (IBAction)groupClick:(UIButton *)sender {
    [UIView animateWithDuration:0.25 animations:^{
        self.blueView.h = self.blueView.h ? 0 : 300;
        sender.imageView.transform = CGAffineTransformRotate(sender.imageView.transform, M_PI);
    }];
    
    
    
}


@end
