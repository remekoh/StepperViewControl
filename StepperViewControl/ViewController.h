//
//  ViewController.h
//  StepperViewControl
//
//  Created by rem{e}koh on 10/8/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StepperView.h"

@interface ViewController : UIViewController <StepperViewDelegate>

@property (nonatomic, weak) UILabel *displayLabel;

@end



