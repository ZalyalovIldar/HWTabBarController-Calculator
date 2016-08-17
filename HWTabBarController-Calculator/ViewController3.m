//
//  ViewController3.m
//  HWTabBarController-Calculator
//
//  Created by Ленар on 16.08.16.
//  Copyright © 2016 com.itisiOSlab. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", _resultString);
    _resultLabel.text = _resultString;
    NSLog(@"%@", _resultLabel.text);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
