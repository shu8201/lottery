//
//  COCMyLotteryController.m
//  彩票
//
//  Created by MAC on 2022/10/8.
//

#import "COCMyLotteryController.h"
#import "COCSettingController.h"

@interface COCMyLotteryController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;


@end

@implementation COCMyLotteryController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *image = [UIImage imageNamed:@"RedButton"];
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    [self.btn setBackgroundImage:image forState:UIControlStateNormal];
    
    UIImage *imagePress = [UIImage imageNamed:@"RedButtonPressed"];
    imagePress = [imagePress stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    [self.btn setBackgroundImage:imagePress forState:UIControlStateHighlighted];
    
    
    
    
}


//点击设置按钮
- (IBAction)settingClick:(id)sender {
    COCSettingController *setting = [[COCSettingController alloc] init];
    setting.title = @"设置";
    
    
    
    [self.navigationController pushViewController:setting animated:YES];
    
}


@end
