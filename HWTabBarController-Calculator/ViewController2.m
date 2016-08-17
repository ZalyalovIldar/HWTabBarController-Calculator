//
//  ViewController2.m
//  HWTabBarController-Calculator
//
//  Created by Ленар on 16.08.16.
//  Copyright © 2016 com.itisiOSlab. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@property (weak, nonatomic) IBOutlet UIImageView *secretImage;
@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)secretButton:(id)sender {
    int randomValue = 1 + (random() % 6);
    NSLog(@"%i", randomValue);
    switch (randomValue) {
        case 1:
            [_secretImage setImage:[UIImage imageNamed:@"cat1"]];
            break;
        case 2:
            [_secretImage setImage:[UIImage imageNamed:@"cat2"]];
            break;
        case 3:
            [_secretImage setImage:[UIImage imageNamed:@"cat3"]];
            break;
        case 4:
            [_secretImage setImage:[UIImage imageNamed:@"cat4"]];
            break;
        case 5:
            [_secretImage setImage:[UIImage imageNamed:@"cat5"]];
            break;
        case 6:
            [_secretImage setImage:[UIImage imageNamed:@"cat6"]];
            break;
        default:
            break;
    }
}

@end