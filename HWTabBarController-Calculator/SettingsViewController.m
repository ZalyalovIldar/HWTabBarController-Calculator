//
//  SettingsViewController.m
//  HWTabBarController-Calculator
//
//  Created by Ленар on 18.08.16.
//  Copyright © 2016 com.itisiOSlab. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *numberSwitch = [NSUserDefaults standardUserDefaults];
    if([numberSwitch integerForKey:@"L"]==0){
        [_whiteInterfaceSwitch setOn:NO];
        [_blueInterfaceSwitch setOn:NO];
        [_greenInterfaceSwitch setOn:NO];
    }else if([numberSwitch integerForKey:@"L"]==1){
        [_whiteInterfaceSwitch setOn:NO];
        [_blueInterfaceSwitch setOn:NO];
        [_greenInterfaceSwitch setOn:YES];
    }else if ([numberSwitch integerForKey:@"L"]==2){
        [_whiteInterfaceSwitch setOn:YES];
        [_blueInterfaceSwitch setOn:NO];
        [_greenInterfaceSwitch setOn:NO];
    }else if ([numberSwitch integerForKey:@"L"]==3){
        [_whiteInterfaceSwitch setOn:NO];
        [_blueInterfaceSwitch setOn:YES];
        [_greenInterfaceSwitch setOn:NO];
    }
}

- (IBAction)greenSwitch:(id)sender {
    NSUserDefaults *numberSwitch = [NSUserDefaults standardUserDefaults];
    if([_greenInterfaceSwitch isOn]){
        [_whiteInterfaceSwitch setOn:NO];
        [_blueInterfaceSwitch setOn:NO];
        [_greenInterfaceSwitch setOn:YES];
        [numberSwitch setInteger:1 forKey:@"L"];
        [numberSwitch synchronize];
        NSLog(@"%li", (long)[numberSwitch integerForKey:@"L"]);
    }
    else {
        [_whiteInterfaceSwitch setOn:NO];
        [_blueInterfaceSwitch setOn:NO];
        [_greenInterfaceSwitch setOn:NO];
        [numberSwitch setInteger:0 forKey:@"L"];
        [numberSwitch synchronize];
    }
}

- (IBAction)whiteSwitch:(id)sender {
    NSUserDefaults *numberSwitch = [NSUserDefaults standardUserDefaults];
    if([_whiteInterfaceSwitch isOn]){
        [_whiteInterfaceSwitch setOn:YES];
        [_blueInterfaceSwitch setOn:NO];
        [_greenInterfaceSwitch setOn:NO];
        [numberSwitch setInteger:2 forKey:@"L"];
        [numberSwitch synchronize];
        NSLog(@"%li", (long)[numberSwitch integerForKey:@"L"]);
    }
    else {
        [_whiteInterfaceSwitch setOn:NO];
        [_blueInterfaceSwitch setOn:NO];
        [_greenInterfaceSwitch setOn:NO];
        [numberSwitch setInteger:0 forKey:@"L"];
        [numberSwitch synchronize];
    }
}
- (IBAction)blueSwitch:(id)sender {
    NSUserDefaults *numberSwitch = [NSUserDefaults standardUserDefaults];
    if([_blueInterfaceSwitch isOn]){
        [_whiteInterfaceSwitch setOn:NO];
        [_blueInterfaceSwitch setOn:YES];
        [_greenInterfaceSwitch setOn:NO];
        [numberSwitch setInteger:3 forKey:@"L"];
        [numberSwitch synchronize];
        NSLog(@"%li", (long)[numberSwitch integerForKey:@"L"]);
    }
    else {
        [_whiteInterfaceSwitch setOn:NO];
        [_blueInterfaceSwitch setOn:NO];
        [_greenInterfaceSwitch setOn:NO];
        [numberSwitch setInteger:0 forKey:@"L"];
        [numberSwitch synchronize];
    }
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
