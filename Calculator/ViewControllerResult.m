//
//  ViewControllerResult.m
//  Calculator
//
//  Created by Rustam N on 17.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "ViewControllerResult.h"

@interface ViewControllerResult ()
@property (weak, nonatomic) IBOutlet UILabel *resultTextLabel;

@end

@implementation ViewControllerResult

- (void)viewDidLoad {
    [super viewDidLoad];
     _resultTextLabel.text = _resultText;
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
