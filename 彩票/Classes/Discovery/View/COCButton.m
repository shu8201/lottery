//
//  COCButton.m
//  彩票
//
//  Created by MAC on 2022/10/8.
//

#import "COCButton.h"
#import "UIView+COCFrame.h"

@implementation COCButton

- (void)layoutSubviews{
    [super layoutSubviews];
    self.titleLabel.x = 0;
    self.imageView.x = self.titleLabel.w;
}



@end
