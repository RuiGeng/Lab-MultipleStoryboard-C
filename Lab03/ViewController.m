//
//  ViewController.m
//  Lab03
//
//  Created by Rui Geng on 2016-09-22.
//  Copyright © 2016 Rui Geng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)onTick:(NSTimer *)timer {
    
    _m_cost += _m_secondCost;
    _labCost.text = [NSString stringWithFormat:@"$ %.02f",_m_cost];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _m_secondCost = 7451.98 / 15/ 10/ 60 / 60;
    _m_cost = 0.00;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startTimer:(id)sender {
    
    if(timer)
        return;
    
     timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                              target: self
                                            selector: @selector(onTick:)
                                            userInfo:nil
                                            repeats:YES ];

}

- (IBAction)stopTimer:(id)sender {
    if (timer){
        [timer invalidate];
        timer = nil;
    }
}

@end
