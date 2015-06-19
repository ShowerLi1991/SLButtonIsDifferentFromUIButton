//
//  SLButtonIsDifferentFromUIButton.h
//  etess
//
//  Created by SL🐰鱼子酱 on 15/6/19.
//  Copyright © 2015年 SL🐰鱼子酱. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    
    SLButtonTypeButtonWhoesTitleIsUnderImage = 0,
    SLButtonTypeButtonWhoesTitleIsOverImage,
    SLButtonTypeButtonWhoesTitleIsLeftImage,
    // 枚举拓展区
} SLButtonType;

@interface SLButtonIsDifferentFromUIButton : UIButton

+ (instancetype)SLButtonWithType:(SLButtonType)SLButtonType;
+ (instancetype)buttonWithType:(SLButtonType)SLButtonType;

@end
