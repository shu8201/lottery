//
//  COCTabBar.m
//  彩票
//
//  Created by MAC on 2022/9/28.
//

#import "COCTabBar.h"

@interface COCTabBatButton : UIButton

@end
@implementation COCTabBatButton

- (void)setHighlighted:(BOOL)highlighted{
    
}
@end

@interface COCTabBar()
@property (nonatomic,strong) UIButton *sccrenBtn;

@end


@implementation COCTabBar

- (void)addButtonWtihImage:(UIImage *)image isImageSel:(UIImage *)imageSel{
    COCTabBatButton *btn = [[COCTabBatButton alloc] init];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:imageSel forState:UIControlStateSelected];
    [btn addTarget:self action:@selector(tabbarItemClick:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:btn];
}

- (void)tabbarItemClick:(UIButton *)sender{
    self.sccrenBtn.selected = NO;
    sender.selected = YES;
    self.sccrenBtn = sender;
    if(self.clickBlock){
        self.clickBlock(sender.tag);
    }
}

-(void)layoutSubviews{
    
    for (int i = 0; i < self.subviews.count; i++) {
        COCTabBatButton *btn = self.subviews[i];
        btn.tag = i;
        CGFloat w = kScreenWidth / self.subviews.count;
        CGFloat h = 49;
        CGFloat x = i * w;
        CGFloat y = 0;
        btn.frame = CGRectMake(x, y, w, h);
        btn.backgroundColor = [UIColor blackColor];
        if(i==0){
            [self tabbarItemClick:btn];
        }
    }

}


@end
