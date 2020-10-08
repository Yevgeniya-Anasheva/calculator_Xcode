//
//  ViewController.m
//  Calculator
//
//  Created by user181988 on 10/5/20.
//  Copyright © 2020 Yevgeniya Anasheva. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "ViewController.h"
#import "Calculator_Brain.h"

@interface ViewController ()
    @property (weak, nonatomic) IBOutlet UILabel *display;
    @property (nonatomic) Calculator_Brain *calculator;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _calculator = [[Calculator_Brain alloc]init];
}
- (IBAction)digitPressed:(id)sender {
    if([sender isMemberOfClass:UIButton.class]){
        self.display.text = [self.display.text stringByAppendingString:((UIButton*)sender).currentTitle];
    }
}
- (IBAction)operatorPressed:(id)sender {
    NSString *operator = ((UIButton*)sender).currentTitle;
    NSNumber *doubleVal = [NSNumber numberWithDouble: [_calculator calculate:operator]];
    self.display.text = [doubleVal stringValue];
}
- (IBAction)enterPressed:(id)sender {
    [_calculator pushItem:[self.display.text doubleValue]];
    self.display.text = @""; //clear the display
}

@end

