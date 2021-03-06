//
//  UIProgressView+Night.h
//  UIProgressView+Night
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and 
//  test it. And finally open a pull request.

#import <UIKit/UIKit.h>
#import "NSObject+Night.h"

IB_DESIGNABLE


@interface UIProgressView (Night)

@property (nonatomic, copy, setter = dk_setProgressTintColorPicker:) DKColorPicker dk_progressTintColorPicker;
@property (nonatomic, copy, setter = dk_setTrackTintColorPicker:) DKColorPicker dk_trackTintColorPicker;

@property (nonatomic, copy) IBInspectable NSString *wd_progressTintColorPicker;

@property (nonatomic, copy) IBInspectable NSString *wd_trackTintColorPicker;

@end
