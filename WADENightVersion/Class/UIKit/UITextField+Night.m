//
//  UITextField+Night.m
//  UITextField+Night
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and
//  test it. And finally open a pull request.

#import "UITextField+Night.h"
#import "DKNightVersionManager.h"
#import <objc/runtime.h>
#import "DKColorTable.h"
@interface UITextField ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, DKColorPicker> *pickers;

@end

@implementation UITextField (Night)

@dynamic wd_textColorPicker;

- (DKColorPicker)dk_textColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_textColorPicker));
}

- (void)dk_setTextColorPicker:(DKColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_textColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.textColor = picker(self.dk_manager.themeVersion);
    [self.pickers setValue:[picker copy] forKey:@"setTextColor:"];
}

-(void)wd_textColorPicker:(NSString *)wd_textColorPicker
{
    self.dk_textColorPicker = DKColorPickerWithKey(wd_textColorPicker);
}

-(NSString *)wd_textColorPicker
{
    return self.wd_textColorPicker;
}

@end
