//
//  UITableView+Night.m
//  UITableView+Night
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and
//  test it. And finally open a pull request.

#import "UITableView+Night.h"
#import "DKNightVersionManager.h"
#import <objc/runtime.h>
#import "DKColorTable.h"
@interface UITableView ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, DKColorPicker> *pickers;

@end

@implementation UITableView (Night)

@dynamic wade_separatorColorPicker;

- (DKColorPicker)dk_separatorColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_separatorColorPicker));
}

- (void)dk_setSeparatorColorPicker:(DKColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_separatorColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.separatorColor = picker(self.dk_manager.themeVersion);
    [self.pickers setValue:[picker copy] forKey:@"setSeparatorColor:"];
}

-(void)setwade_separatorColorPicker:(NSString *)wade_separatorColorPicker
{
    self.dk_separatorColorPicker = DKColorPickerWithKey(wade_separatorColorPicker);
}

-(NSString*)wade_separatorColorPicker
{
    return self.wade_separatorColorPicker;
}

@end