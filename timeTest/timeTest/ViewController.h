//
//  ViewController.h
//  timeTest
//
//  Created by wade on 16/8/25.
//  Copyright © 2016年 wade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZTimerLabel.h"

@interface ViewController : UIViewController

@property (nonatomic,weak) IBOutlet UILabel *timeLabel;

- (IBAction)start:(id)sender;

- (IBAction)pause:(id)sender;

- (IBAction)end:(id)sender;

- (IBAction)reset:(id)sender;

@end

