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
        self.contentEdgeInsets = UIEdgeInsetsMake(0, -1000, 0, -1000);
    }
    return self;
}


- (void)setTitleAndImageEdgeInsetsWithSLButtonType:(SLButtonType)SLButtonType {
    
    if (SLButtonType == SLButtonTypeButtonWhoesTitleIsUnderImage) {
        
        [self imageExsitAndTextExsitBlock:^{
           
            self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, 0);

        } and:^{
            
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.image.size.width, -self.imageView.image.size.height - self.titleLabel.frame.size.height * 0.5 - 20, 0);
            
        }];
        
    } else if (SLButtonType == SLButtonTypeButtonWhoesTitleIsOverImage) {
        
        [self imageExsitAndTextExsitBlock:^{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, 0);
            
        } and:^{
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.image.size.width, self.imageView.image.size.height + self.titleLabel.frame.size.height * 0.5 + 20, 0);
            
        }];
        
    } else if (SLButtonType == SLButtonTypeButtonWhoesTitleIsLeftImage) {
        
        [self imageExsitAndTextExsitBlock:^{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, self.frame.size.width - self.imageView.image.size.width, 0, 0);

        } and:^{
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.image.size.width * 2, 0, 0);

        }];
        
    }
    
    // 枚举定义button拓展区
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self setTitleAndImageEdgeInsetsWithSLButtonType:self.SLButtonType];

}

- (void)imageExsitAndTextExsitBlock:(void(^)())imageExsit and:(void(^)())textExsit {
    
    if (self.imageView.image) {
        textExsit();
    }
    if (self.titleLabel.text) {
        imageExsit();
    }
}


@end
