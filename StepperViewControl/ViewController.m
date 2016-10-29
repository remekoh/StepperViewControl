//
//  ViewController.m
//  StepperViewControl
//
//  Created by rem{e}koh on 10/8/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    StepperView *stepperView = [[StepperView alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    
//    StepperView *stepperView = [[stepperView alloc] init]:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
    
    stepperView.delegate = self;
    stepperView.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:stepperView];
   
    // Center
    CGPoint center = self.view.center;
    [stepperView setCenter:center];
    
    
}

-(void) stepperViewDidValueChanged:(int)value {
    self.displayLabel.text = [NSString stringWithFormat:@"%i", value];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
