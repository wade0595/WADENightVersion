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

@dynamic wade_Image;
@dynamic wade_BackgroundImage;
@dynamic wade_TitleColorPicker;

-(void)setWade_TitleColorPicker:(NSString *)wade_TitleColorPicker
{
    [self dk_setTitleColorPicker:DKColorPickerWithKey(wade_TitleColorPicker) forState:UIControlStateNormal];
}
-(NSString *)wade_TitleColorPicker
{
    return self.wade_TitleColorPicker;
}

-(void)setWade_BackgroundImage:(NSString *)wade_BackgroundImage
{
    NSArray *aArray = [wade_BackgroundImage componentsSeparatedByString:@","];
    
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
-(NSString *)wade_BackgroundImage
{
    return self.wade_BackgroundImage;
}

-(void)setWade_Image:(NSString *)wade_Image
{
    NSArray *aArray = [wade_Image componentsSeparatedByString:@","];
    
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
-(NSString *)wade_Image
{
    return self.wade_Image;
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
