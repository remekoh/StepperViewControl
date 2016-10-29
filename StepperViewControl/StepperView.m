//
//  StepperView.m
//  StepperViewControl
//
//  Created by rem{e}koh on 10/9/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView


-(id) initWithFrame:(CGRect)frame   {
    
    self = [super initWithFrame:frame];
    
    currentValue = 0;
    
    // + Button
    positiveButton = [UIButton buttonWithType:UIButtonTypeCustom];
    positiveButton.backgroundColor = [UIColor grayColor];
    [positiveButton setTitle:@"+" forState:UIControlStateNormal];
    positiveButton.frame = CGRectMake(-10, 0, 50, 50);
    [positiveButton setCenter:CGPointMake(self.frame.size.width - 50, self.frame.size.height/2)];
    [positiveButton addTarget:self action:@selector(plusButtonPressed:) forControlEvents:UIControlEventTouchUpInside];

    
    // - Button
    negativeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    negativeButton.backgroundColor = [UIColor grayColor];
    [negativeButton setTitle:@"-" forState:UIControlStateNormal];
    negativeButton.frame = CGRectMake(-10, 0, 50, 50);
    [negativeButton setCenter:CGPointMake(50, self.frame.size.height/2)];
    [negativeButton addTarget:self action:@selector(minusButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // Label
    steps = [[UILabel alloc]init];
    steps.text = [NSString stringWithFormat:@"%d", currentValue];
    steps.frame = CGRectMake(0, 0, 50, 50);
    [steps setCenter:CGPointMake(self.frame.size.width/2, self.frame.size.height/2)];
    
    // Add buttons and label to view
    [self addSubview:positiveButton];
    [self addSubview:negativeButton];
    [self addSubview:steps];
    
    return self;
}

-(void) plusButtonPressed:(id) sender {
    
    currentValue += 1;
    steps.text = [NSString stringWithFormat:@"%d",currentValue];
    [self.delegate stepperViewDidValueChanged:currentValue];
}

-(void) minusButtonPressed:(id) sender {
    
    currentValue -= 1;
    steps.text = [NSString stringWithFormat:@"%d",currentValue];
    [self.delegate stepperViewDidValueChanged:currentValue];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
