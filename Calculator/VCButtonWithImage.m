//
//  VCButtonWithImage.m
//  Calculator
//
//  Created by Rustam N on 17.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "VCButtonWithImage.h"

@interface VCButtonWithImage ()

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIImageView *imageFirst;
@property (weak, nonatomic) IBOutlet UIImageView *imageSecond;
@property (nonatomic) int rand;


@end

@implementation VCButtonWithImage



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton*)sender{
    _rand = arc4random()%6;
    [_imageSecond setImage:[UIImage imageNamed:([[NSNumber numberWithInt:_rand] stringValue])]];

    _rand = arc4random()%6;
    [_imageFirst setImage:[UIImage imageNamed:([[NSNumber numberWithInt:_rand] stringValue])]];
    
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
