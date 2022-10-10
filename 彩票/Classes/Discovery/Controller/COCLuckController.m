//
//  COCLuckController.m
//  彩票
//
//  Created by MAC on 2022/10/8.
//

#import "COCLuckController.h"

@interface COCLuckController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation COCLuckController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageView.animationImages = @[[UIImage imageNamed:@"lucky_entry_light0"],[UIImage imageNamed:@"lucky_entry_light1"]];
    
    self.imageView.animationDuration = 1;
    [self.imageView startAnimating];
}


@end
