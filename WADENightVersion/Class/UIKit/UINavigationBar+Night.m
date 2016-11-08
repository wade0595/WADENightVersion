//
//  UINavigationBar+Night.m
//  UINavigationBar+Night
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and
//  test it. And finally open a pull request.

#import "UINavigationBar+Night.h"
#import "DKNightVersionManager.h"
#import <objc/runtime.h>
#import "DKColorTable.h"
@interface UINavigationBar ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, DKColorPicker> *pickers;

@end

@implementation UINavigationBar (Night)

@dynamic wd_tintColorPicker;
@dynamic wd_barTintColorPicker;

- (DKColorPicker)dk_barTintColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_barTintColorPicker));
}

- (void)dk_setBarTintColorPicker:(DKColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_barTintColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.barTintColor = picker(self.dk_manager.themeVersion);
    [self.pickers setValue:[picker copy] forKey:@"setBarTintColor:"];
}

- (DKColorPicker)dk_tintColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_tintColorPicker));
}

- (void)dk_setTintColorPicker:(DKColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_tintColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.tintColor = picker(self.dk_manager.themeVersion);
    [self.pickers setValue:[picker copy] forKey:@"setTintColor:"];
}

-(void)wd_tintColorPicker:(NSString *)wd_tintColorPicker
{
    self.dk_tintColorPicker = DKColorPickerWithKey(wd_tintColorPicker);
}

-(NSString*)wd_tintColorPicker
{
    return self.wd_tintColorPicker;
}

-(void)wd_barTintColorPicker:(NSString *)wd_barTintColorPicker
{
    self.dk_barTintColorPicker = DKColorPickerWithKey(wd_barTintColorPicker);
}

-(NSString*)wd_barTintColorPicker
{
    return self.wd_barTintColorPicker;
}

@end
