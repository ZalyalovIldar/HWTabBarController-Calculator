//
//  ViewController.m
//  HWTabBarController-Calculator
//
//  Created by Ildar Zalyalov on 16.08.16.
//  Copyright © 2016 com.itisiOSlab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonAction:(id)sender {
    UIStoryboard *loginStoyboard = [UIStoryboard storyboardWithName:@"LoginStoryboard" bundle:nil];
    UIViewController *vc = [loginStoyboard instantiateViewControllerWithIdentifier:@"loginVC"];
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
