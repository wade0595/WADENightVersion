//
//  UIImageView+Night.m
//  DKNightVersion
//
//  Created by Draveness on 15/12/10.
//  Copyright © 2015年 DeltaX. All rights reserved.
//

#import "UIImageView+Night.h"
#import "NSObject+Night.h"
#import <objc/runtime.h>

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, DKColorPicker> *pickers;

@end

@implementation UIImageView (Night)

-(void)setWade_imagePicker:(NSString *)wade_imagePicker
{
    NSArray *aArray = [wade_imagePicker componentsSeparatedByString:@","];
    
    switch ([aArray count]) {
        case 1:
        {
            self.dk_imagePicker = DKImagePickerWithNames(aArray[0]);
        }
            break;
        case 2:
        {
            self.dk_imagePicker = DKImagePickerWithNames(aArray[0],aArray[1]);
        }
            break;
        case 3:
        {
            self.dk_imagePicker = DKImagePickerWithNames(aArray[0],aArray[1],aArray[2]);
        }
            break;
        default:
            break;
    }
}
-(NSString *)wade_imagePicker
{
    return self.wade_imagePicker;
}

- (instancetype)dk_initWithImagePicker:(DKImagePicker)picker {
    UIImageView *imageView = [self initWithImage:picker(self.dk_manager.themeVersion)];
    imageView.dk_imagePicker = [picker copy];
    return imageView;
}

- (DKImagePicker)dk_imagePicker {
    return objc_getAssociatedObject(self, @selector(dk_imagePicker));
}

- (void)dk_setImagePicker:(DKImagePicker)picker {
    objc_setAssociatedObject(self, @selector(dk_imagePicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.image = picker(self.dk_manager.themeVersion);
    [self.pickers setValue:[picker copy] forKey:@"setImage:"];

}

@end
