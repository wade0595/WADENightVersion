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

@dynamic wade_tintColorPicker;
@dynamic wade_barTintColorPicker;

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

-(void)setWade_tintColorPicker:(NSString *)wade_tintColorPicker
{
    self.dk_tintColorPicker = DKColorPickerWithKey(wade_tintColorPicker);
}

-(NSString*)wade_tintColorPicker
{
    return self.wade_tintColorPicker;
}

-(void)setWade_barTintColorPicker:(NSString *)wade_barTintColorPicker
{
    self.dk_barTintColorPicker = DKColorPickerWithKey(wade_barTintColorPicker);
}

-(NSString*)wade_barTintColorPicker
{
    return self.wade_barTintColorPicker;
}

@end
