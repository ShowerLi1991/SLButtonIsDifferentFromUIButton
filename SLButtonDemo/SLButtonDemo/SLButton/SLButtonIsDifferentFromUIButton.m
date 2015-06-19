//
//  SLButtonIsDifferentFromUIButton.m
//  etess
//
//  Created by SL🐰鱼子酱 on 15/6/19.
//  Copyright © 2015年 SL🐰鱼子酱. All rights reserved.
//

#import "SLButtonIsDifferentFromUIButton.h"


@interface SLButtonIsDifferentFromUIButton ()

@property (assign, nonatomic) SLButtonType SLButtonType;

@end


@implementation SLButtonIsDifferentFromUIButton

+ (instancetype)buttonWithType:(SLButtonType)SLButtonType {
    return [self SLButtonWithType:SLButtonType];
}

+ (instancetype)SLButtonWithType:(SLButtonType)SLButtonType {
    SLButtonIsDifferentFromUIButton * btn = [[self alloc] initWithButtonType:SLButtonType];
    return btn;
}

- (instancetype)initWithButtonType:(SLButtonType)SLButtonType {
    if (self = [super init]) {
        self.SLButtonType = SLButtonType;
        self.contentEdgeInsets = UIEdgeInsetsMake(0, -600, 0, -600);
    }
    return self;
}


- (void)setImage:(nullable UIImage *)image forState:(UIControlState)state {
    
    [super setImage:image forState:state];
    [self setTitleAndImageEdgeInsetsWithSLButtonType:self.SLButtonType];
}

- (void)setTitle:(nullable NSString *)title forState:(UIControlState)state {
    
    [super setTitle:title forState:state];
    [self setTitleAndImageEdgeInsetsWithSLButtonType:self.SLButtonType];
}

- (void)setTitleAndImageEdgeInsetsWithSLButtonType:(SLButtonType)SLButtonType {
    
    if (SLButtonType == SLButtonTypeButtonWhoesTitleIsUnderImage) {
        
        [self imageExsitAndTextExsitblock:^{
           
            self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, 0);

        } and:^{
            
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.image.size.width, -self.imageView.image.size.height, 0);
            
        }];
        
    } else if (SLButtonType == SLButtonTypeButtonWhoesTitleIsOverImage) {
        
        [self imageExsitAndTextExsitblock:^{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, 0);
            
        } and:^{
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.image.size.width, self.imageView.image.size.height, 0);
            
        }];
        
    } else if (SLButtonType == SLButtonTypeButtonWhoesTitleIsLeftImage) {
        
        [self imageExsitAndTextExsitblock:^{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, self.frame.size.width - self.imageView.image.size.width, 0, 0);

        } and:^{
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.image.size.width * 2, 0, 0);

        }];
        
    }
    
    // 枚举定义button拓展区
    
}

- (void)setFrame:(CGRect)frame {
    
    [super setFrame:frame];
    [self setTitleAndImageEdgeInsetsWithSLButtonType:self.SLButtonType];
    
}

- (void)imageExsitAndTextExsitblock:(void(^)())imageExsit and:(void(^)())textExsit {
    
    if (self.imageView.image) {
        textExsit();
    }
    if (self.titleLabel.text) {
        imageExsit();
    }
}


@end