//
//  ViewController.m
//  HWTabBarController-Calculator
//
//  Created by Ildar Zalyalov on 16.08.16.
//  Copyright © 2016 com.itisiOSlab. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@property (nonatomic) int index;
@property (strong, nonatomic)NSString *result;
@property (strong, nonatomic) NSMutableArray *keepResultArray;
@property (weak, nonatomic) IBOutlet UIButton *numButtons;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _index = -1;
    _result = @"Нет результата";
    _keepResultArray = [NSMutableArray arrayWithObjects : @"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата",@"Нет результата", nil];
    NSUserDefaults *numberSwitch = [NSUserDefaults standardUserDefaults];
    [numberSwitch synchronize];
    NSLog(@"%li",(long)[numberSwitch integerForKey:@"L"]);
    switch ([numberSwitch integerForKey:@"L"]) {
        case 0:
            displayLabel.backgroundColor = [UIColor blackColor];
            break;
        case 1:
            displayLabel.backgroundColor = [UIColor greenColor];
            break;
        case 2:
            displayLabel.backgroundColor = [UIColor whiteColor];
            displayLabel.textColor = [UIColor blackColor];
            break;
        case 3:
            displayLabel.backgroundColor = [UIColor blueColor];
            break;
            
        default:
            break;
    }
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    NSUserDefaults *numberSwitch = [NSUserDefaults standardUserDefaults];
    [numberSwitch synchronize];
    NSLog(@"%li",(long)[numberSwitch integerForKey:@"L"]);
    switch ([numberSwitch integerForKey:@"L"]) {
        case 0:
            displayLabel.backgroundColor = [UIColor blackColor];
            displayLabel.textColor = [UIColor whiteColor];
            break;
        case 1:
            displayLabel.backgroundColor = [UIColor greenColor];
            displayLabel.textColor = [UIColor whiteColor];
            break;
        case 2:
            displayLabel.backgroundColor = [UIColor whiteColor];
            displayLabel.textColor = [UIColor blackColor];
            break;
        case 3:
            displayLabel.backgroundColor = [UIColor blueColor];
            displayLabel.textColor = [UIColor whiteColor];
            break;
            
        default:
            break;
    }

}

-(IBAction)del:(id)sender{
    n=0;
    [self toDisplay];
}

-(IBAction)clear:(id)sender{
    n = 0;
    m = 0;
    [self toDisplay];
    operationEnter = NO;
}

-(IBAction)num:(id)sender{
    if(operationEnter){
        m = n;
        n = 0;
        operationEnter = NO;
    }
    //nConstant = [NSString stringWithFormat:@"%@%li", nConstant, (long)[sender tag]];
    //n = [nConstant doubleValue];
    n = (n * 10.0f) + [sender tag];
    NSLog(@"%li", (long)[sender tag]);
    [self toDisplay];
}

-(IBAction)operation:(id)sender{
    if (doubleOperation){
        if (!operationEnter){
            NSLog(@"%li", (long)[sender tag]);
            if (operation == 101){ //сложение
                _result = [NSString stringWithFormat:@"%g +", m];
                _result = [NSString stringWithFormat:@"%@ %g",_result, n];
                n = m + n;
                _result = [NSString stringWithFormat:@"%@ = %g",_result, n];
                NSLog(@"%@",_result);
            }
            if (operation == 102){//вычитание
                _result = [NSString stringWithFormat:@"%g -", m];
                _result = [NSString stringWithFormat:@"%@ %g",_result, n];
                n = m - n;
                _result = [NSString stringWithFormat:@"%@ = %g",_result, n];
                NSLog(@"%@",_result);
            }
            if (operation == 103){//умножение
                _result = [NSString stringWithFormat:@"%g *", m];
                _result = [NSString stringWithFormat:@"%@ %g",_result, n];
                n = m * n;
                _result = [NSString stringWithFormat:@"%@ = %g",_result, n];
                NSLog(@"%@",_result);
            }
            if (operation == 104){ //деление
                _result = [NSString stringWithFormat:@"%g /", m];
                _result = [NSString stringWithFormat:@"%@ %g",_result, n];
                n = m / n;
                _result = [NSString stringWithFormat:@"%@ = %g",_result, n];
                NSLog(@"%@",_result);
            }
            //            if (operation == 201){ //синус
            //                double fact = 1;
            //                NSLog(@"%g %g",n, m);
            //                for(int i=0; i<5; i++){
            //                    for (int j=0; j<=i; j++){
            //                        fact = fact * (2*i+1);
            //                    }
            //                    n = n + pow(-1, i)*(pow(n, 2*i-1))/fact;
            //                    fact=1;
            //                }
            //                [self toDisplay];
            //            }
            //            if (operation == 202){  //косинус
            //                double fact = 1;
            //                for(int i=0; i<6; i++){
            //                    for (int j=0; j<=i; j++){
            //                        fact = fact * (2*i);
            //                    }
            //                    m = m + pow(-1, i)*(pow(m, 2*i))/fact;
            //                    fact=1;
            //                }
            //                [self toDisplay];
            //            }
        }
    }
    m = n;
    operation = [sender tag];
    operationEnter = YES;
    doubleOperation = YES;
    [self toDisplay];
    
}

-(IBAction)inverse:(id)sender{
    n = -n;
    [self toDisplay];
}

-(IBAction)interest:(id)sender{
    n = m - ((m/100)*n);
}

-(void) toDisplay {
    NSString *str = [NSString stringWithFormat:@"%g", n];
    [displayLabel setText:str];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    TableViewController *tc = [segue destinationViewController];
    if (_index<14) {
        _index = _index + 1;
    }
    else {
        _index = 0;
    }
    [_keepResultArray replaceObjectAtIndex:_index withObject:_result];
    tc.arr = _keepResultArray;
    NSLog(@"%@", [_keepResultArray objectAtIndex:_index]);
    if([[_keepResultArray objectAtIndex:_index] isEqual:@"Нет результата"]){
        _index = -1;
    }
}

@end
