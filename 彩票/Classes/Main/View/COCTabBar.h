//
//  COCTabBar.h
//  彩票
//
//  Created by MAC on 2022/9/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface COCTabBar : UIView
@property (nonatomic, copy) void(^clickBlock)(NSInteger index);


- (void)addButtonWtihImage:(UIImage *)image isImageSel:(UIImage *)imageSel;

@end

NS_ASSUME_NONNULL_END
