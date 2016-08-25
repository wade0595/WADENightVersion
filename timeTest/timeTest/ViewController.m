//
//  ViewController.m
//  timeTest
//
//  Created by wade on 16/8/25.
//  Copyright © 2016年 wade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<MZTimerLabelDelegate>
{
    MZTimerLabel *timerExample;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender {
     [timerExample pause];
    [timerExample reset];
    timerExample = nil;
    
        long long int time = [[NSDate date] timeIntervalSince1970];
        
        timerExample = [[MZTimerLabel alloc] initWithLabel:self.timeLabel andTimerType:MZTimerLabelTypeTimer];
        timerExample.delegate = self;
        timerExample.textColor = [UIColor whiteColor];
        timerExample.timerType = MZTimerLabelTypeTimer;
        timerExample.timeFormat = @"mm:ss:SS";
        [timerExample setEndedBlock:^(NSTimeInterval i){
            
            [self ss];
            
        }];
        [timerExample setCountDownTime:3000 - (time - 1472096965)];
        [timerExample start];
   
    
    
    
    
    
}

- (IBAction)pause:(id)sender {
    
    [timerExample pause];
    
    timerExample.timeLabel.text = @"00:00:00";
    
    timerExample = nil;
}

- (IBAction)end:(id)sender {
    
    [timerExample reset];
    
    timerExample.text = @"00:00:00";
    
    timerExample = nil;
    
}

- (IBAction)reset:(id)sender {
    
   
    [self ss];
}

-(void)ss
{
    [timerExample pause];
    [timerExample reset];
    timerExample = nil;
    
    long long int time = [[NSDate date] timeIntervalSince1970];
    
    timerExample = [[MZTimerLabel alloc] initWithLabel:self.timeLabel andTimerType:MZTimerLabelTypeTimer];
    
    timerExample.delegate = self;
    timerExample.timeLabel.textColor = [UIColor redColor];
    
    timerExample.timerType = MZTimerLabelTypeStopWatch;
    //self.timeLab.timeFormat = @"HH:mm:ss";
    
    [timerExample setStopWatchTime:(time - 1472096965) - 3000];
    
    [timerExample start];
}

- (NSString*)timerLabel:(MZTimerLabel *)timerLabel customTextToDisplayAtTime:(NSTimeInterval)time
{
    if(timerLabel.timerType == MZTimerLabelTypeStopWatch){
        int second = (int)time  % 60;
        
        int SS = (int)time  % 60 / 100;
        
        //int minute = ((int)time / 60) % 60;
        int hours = time / 3600;
        
        int minutes = ((int)time / 60) + hours / 60;
        
        return [NSString stringWithFormat:@"-%02d:%02d : %02d ",minutes,second,SS];
    }
    else
        return nil;
}
@end
