//
//  UIButton+Night.m
//  DKNightVersion
//
//  Created by Draveness on 15/12/9.
//  Copyright © 2015年 DeltaX. All rights reserved.
//

#import "UIButton+Night.h"
#import <objc/runtime.h>
#import "DKColorTable.h"

@interface UIButton ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, id> *pickers;



@end



@implementation UIButton (Night)

@dynamic wd_Image;
@dynamic wd_BackgroundImage;
@dynamic wd_TitleColorPicker;

-(void)wd_TitleColorPicker:(NSString *)wd_TitleColorPicker
{
    [self dk_setTitleColorPicker:DKColorPickerWithKey(wd_TitleColorPicker) forState:UIControlStateNormal];
}
-(NSString *)wd_TitleColorPicker
{
    return self.wd_TitleColorPicker;
}

-(void)wd_BackgroundImage:(NSString *)wd_BackgroundImage
{
    NSArray *aArray = [wd_BackgroundImage componentsSeparatedByString:@","];
    
    switch ([aArray count]) {
        case 1:
        {
            [self dk_setBackgroundImage:DKImagePickerWithNames(aArray[0]) forState:UIControlStateNormal];
        }
        break;
        case 2:
        {
            [self dk_setBackgroundImage:DKImagePickerWithNames(aArray[0],aArray[1]) forState:UIControlStateNormal];
        }
            break;
        case 3:
        {
            [self dk_setBackgroundImage:DKImagePickerWithNames(aArray[0],aArray[1],aArray[2]) forState:UIControlStateNormal];
        }
            
        default:
            break;
    }
    
}
-(NSString *)wd_BackgroundImage
{
    return self.wd_BackgroundImage;
}

-(void)wd_Image:(NSString *)wd_Image
{
    NSArray *aArray = [wd_Image componentsSeparatedByString:@","];
    
    switch ([aArray count]) {
        case 1:
        {
            [self dk_setImage:DKImagePickerWithNames(aArray[0]) forState:UIControlStateNormal];
        }
        break;
        case 2:
        {
            [self dk_setImage:DKImagePickerWithNames(aArray[0],aArray[1]) forState:UIControlStateNormal];
        }
        break;
        case 3:
        {
            [self dk_setImage:DKImagePickerWithNames(aArray[0],aArray[1],aArray[2]) forState:UIControlStateNormal];
        }
        break;
        default:
            break;
    }

}
-(NSString *)wd_Image
{
    return self.wd_Image;
}



- (void)dk_setTitleColorPicker:(DKColorPicker)picker forState:(UIControlState)state {
    [self setTitleColor:picker(self.dk_manager.themeVersion) forState:state];
    NSString *key = [NSString stringWithFormat:@"%@", @(state)];
    NSMutableDictionary *dictionary = [self.pickers valueForKey:key];
    if (!dictionary) {
        dictionary = [[NSMutableDictionary alloc] init];
    }
    [dictionary setValue:[picker copy] forKey:NSStringFromSelector(@selector(setTitleColor:forState:))];
    [self.pickers setValue:dictionary forKey:key];
}

- (void)dk_setBackgroundImage:(DKImagePicker)picker forState:(UIControlState)state {
    [self setBackgroundImage:picker(self.dk_manager.themeVersion) forState:state];
    NSString *key = [NSString stringWithFormat:@"%@", @(state)];
    NSMutableDictionary *dictionary = [self.pickers valueForKey:key];
    if (!dictionary) {
        dictionary = [[NSMutableDictionary alloc] init];
    }
    [dictionary setValue:[picker copy] forKey:NSStringFromSelector(@selector(setBackgroundImage:forState:))];
    [self.pickers setValue:dictionary forKey:key];
}

- (void)dk_setImage:(DKImagePicker)picker forState:(UIControlState)state {
    [self setImage:picker(self.dk_manager.themeVersion) forState:state];
    NSString *key = [NSString stringWithFormat:@"%@", @(state)];
    NSMutableDictionary *dictionary = [self.pickers valueForKey:key];
    if (!dictionary) {
        dictionary = [[NSMutableDictionary alloc] init];
    }
    [dictionary setValue:[picker copy] forKey:NSStringFromSelector(@selector(setImage:forState:))];
    [self.pickers setValue:dictionary forKey:key];
}

- (void)night_updateColor {
    [self.pickers enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[NSDictionary class]]) {
            NSDictionary<NSString *, DKColorPicker> *dictionary = (NSDictionary *)obj;
            [dictionary enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull selector, DKColorPicker  _Nonnull picker, BOOL * _Nonnull stop) {
                UIControlState state = [key integerValue];
                [UIView animateWithDuration:DKNightVersionAnimationDuration
                                 animations:^{
                                     if ([selector isEqualToString:NSStringFromSelector(@selector(setTitleColor:forState:))]) {
                                         UIColor *resultColor = picker(self.dk_manager.themeVersion);
                                         [self setTitleColor:resultColor forState:state];
                                     } else if ([selector isEqualToString:NSStringFromSelector(@selector(setBackgroundImage:forState:))]) {
                                         UIImage *resultImage = ((DKImagePicker)picker)(self.dk_manager.themeVersion);
                                         [self setBackgroundImage:resultImage forState:state];
                                     } else if ([selector isEqualToString:NSStringFromSelector(@selector(setImage:forState:))]) {
                                         UIImage *resultImage = ((DKImagePicker)picker)(self.dk_manager.themeVersion);
                                         [self setImage:resultImage forState:state];
                                     }
                                 }];
            }];
        } else {
            SEL sel = NSSelectorFromString(key);
            DKColorPicker picker = (DKColorPicker)obj;
            UIColor *resultColor = picker(self.dk_manager.themeVersion);
            [UIView animateWithDuration:DKNightVersionAnimationDuration
                             animations:^{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
                                 [self performSelector:sel withObject:resultColor];
#pragma clang diagnostic pop
                             }];

        }
    }];
}

@end
