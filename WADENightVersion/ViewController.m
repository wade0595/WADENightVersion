//
//  ViewController.m
//  WADENightVersion
//
//  Created by wade on 16/8/18.
//  Copyright © 2016年 wade. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sw:(UISwitch *)sender {
    
    if(sender.on)
    {
        self.dk_manager.themeVersion = DKThemeVersionNight;
    }
    else
    {
        self.dk_manager.themeVersion = DKThemeVersionNormal;
    }
    
}
@end
