//
//  UISlider+Night.m
//  UISlider+Night
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and
//  test it. And finally open a pull request.

#import "UISlider+Night.h"
#import "DKNightVersionManager.h"
#import <objc/runtime.h>
#import "DKColorTable.h"
@interface UISlider ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, DKColorPicker> *pickers;

@end

@implementation UISlider (Night)
@dynamic wd_thumbTintColorPicker;
@dynamic wd_maximumTrackTintColorPicker;
@dynamic wd_minimumTrackTintColorPicker;

-(void)setWd_thumbTintColorPicker:(NSString *)wd_thumbTintColorPicker
{
    self.dk_thumbTintColorPicker = DKColorPickerWithKey(wd_thumbTintColorPicker);
}

-(NSString *)wd_thumbTintColorPicker
{
    return self.wd_thumbTintColorPicker;
}

-(void)setWd_maximumTrackTintColorPicker:(NSString *)wd_maximumTrackTintColorPicker
{
    self.dk_maximumTrackTintColorPicker = DKColorPickerWithKey(wd_maximumTrackTintColorPicker);
}

-(NSString *)wd_maximumTrackTintColorPicker
{
    return self.wd_maximumTrackTintColorPicker;
}

-(void)setWd_minimumTrackTintColorPicker:(NSString *)wd_minimumTrackTintColorPicker
{
    self.dk_minimumTrackTintColorPicker = DKColorPickerWithKey(wd_minimumTrackTintColorPicker);
}

-(NSString *)wd_minimumTrackTintColorPicker
{
    return self.wd_minimumTrackTintColorPicker;
}


- (DKColorPicker)dk_minimumTrackTintColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_minimumTrackTintColorPicker));
}

- (void)dk_setMinimumTrackTintColorPicker:(DKColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_minimumTrackTintColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.minimumTrackTintColor = picker(self.dk_manager.themeVersion);
    [self.pickers setValue:[picker copy] forKey:@"setMinimumTrackTintColor:"];
}

- (DKColorPicker)dk_maximumTrackTintColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_maximumTrackTintColorPicker));
}

- (void)dk_setMaximumTrackTintColorPicker:(DKColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_maximumTrackTintColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.maximumTrackTintColor = picker(self.dk_manager.themeVersion);
    [self.pickers setValue:[picker copy] forKey:@"setMaximumTrackTintColor:"];
}

- (DKColorPicker)dk_thumbTintColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_thumbTintColorPicker));
}

- (void)dk_setThumbTintColorPicker:(DKColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_thumbTintColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.thumbTintColor = picker(self.dk_manager.themeVersion);
    [self.pickers setValue:[picker copy] forKey:@"setThumbTintColor:"];
}


@end
