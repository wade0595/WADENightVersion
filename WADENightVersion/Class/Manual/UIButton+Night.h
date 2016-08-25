//
//  UIButton+Night.h
//  DKNightVersion
//
//  Created by Draveness on 15/12/9.
//  Copyright © 2015年 DeltaX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSObject+Night.h"

IB_DESIGNABLE

@interface UIButton (Night)

- (void)dk_setTitleColorPicker:(DKColorPicker)picker forState:(UIControlState)state;

- (void)dk_setBackgroundImage:(DKImagePicker)picker forState:(UIControlState)state;

- (void)dk_setImage:(DKImagePicker)picker forState:(UIControlState)state;

@property (nonatomic, copy) IBInspectable NSString *wade_TitleColorPicker;

@property (nonatomic, copy) IBInspectable NSString *wade_BackgroundImage;

@property (nonatomic, copy) IBInspectable NSString *wade_Image;



@end
