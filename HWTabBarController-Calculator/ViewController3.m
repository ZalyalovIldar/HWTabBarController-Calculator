//
//  ViewController3.m
//  HWTabBarController-Calculator
//
//  Created by Ленар on 17.08.16.
//  Copyright © 2016 com.itisiOSlab. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    _textLabel.text = _labelText;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
