//
//  ViewController.m
//  Calculator
//
//  Created by Rustam N on 15.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerResult.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textView;
@property (strong, nonatomic) NSString *text;
@property (strong, nonatomic) NSString *textInMind;
@property (strong, nonatomic) NSString*Act;
@property (nonatomic) long calculating;
@property (strong, nonatomic) NSString *actionInString;
@property (strong, nonatomic) NSString *sendAnswerOtherWindows;

@property (weak, nonatomic) IBOutlet UIButton *zeroButton;
@property (weak, nonatomic) IBOutlet UIButton *twoButton;
@property (weak, nonatomic) IBOutlet UIButton *threeButton;
@property (weak, nonatomic) IBOutlet UIButton *thorButton;
@property (weak, nonatomic) IBOutlet UIButton *fiveButton;
@property (weak, nonatomic) IBOutlet UIButton *sixButton;
@property (weak, nonatomic) IBOutlet UIButton *sevenButton;
@property (weak, nonatomic) IBOutlet UIButton *eightButton;
@property (weak, nonatomic) IBOutlet UIButton *nineButton;
@property (weak, nonatomic) IBOutlet UIButton *equalsButton;

//320 x 379
//238 - 4 / 3 | 82 -2 x 379 - 6 / 5
//78 x 80 x 75
@end

@implementation ViewController

#pragma mark - Calculator
- (void)viewDidLoad {
    [super viewDidLoad];
    _text = @"";
    
}


- (IBAction)buttonPressed:(UIButton*)sender{
    [self UpDateTextView:sender.titleLabel.text];
    
}
- (IBAction)buttonActionProsentAndReversSign:(UIButton*)sende{
    float numberInInt = [_textView.text intValue];
    switch (sende.tag) {
        case 6:
            [_textView setText: [NSString stringWithFormat:@"%f", [self procent:numberInInt]]];
                 _text = _textView.text;
            break;
        case 7:
            [_textView setText: [NSString stringWithFormat:@"%f", [self reversSign:numberInInt]]];
                 _text = _textView.text;
            break;
  
    }
    
    
}


- (IBAction)buttonActionPressed:(UIButton*)sender{
    _calculating = sender.tag;
    _textInMind = _text;
    _text = @"";
    [_textView setText: _text];
}


- (IBAction)buttonActionPressedEquals:(UIButton*)sender{
    float firstNumerInInt = [_textInMind intValue];
    float secondNumerInInt = [_text floatValue];
    switch (_calculating) {
        case 2:
            [_textView setText: [NSString stringWithFormat:@"%f", [self plus:firstNumerInInt and:secondNumerInInt]]];
            _text = _textView.text;
            break;
        case 3:
            [_textView setText: [NSString stringWithFormat:@"%f", [self minus:firstNumerInInt and:secondNumerInInt]]];
            _text = _textView.text;
            break;
        case 4:
            [_textView setText: [NSString stringWithFormat:@"%f", [self multiplay:firstNumerInInt and:secondNumerInInt]]];
            _text = _textView.text;
            break;
        case 5:
            [_textView setText: [NSString stringWithFormat:@"%f", [self devishen:firstNumerInInt and:secondNumerInInt]]];
            _text = _textView.text;
            break;

        case 8:
            _text = @"";
            _textInMind = @"";
            [_textView setText: @"0"];
            break;
            
    }
    _sendAnswerOtherWindows = _text;


}

- (float)plus:(float)firstNumber and:(float)secendNumber{
    return secendNumber + firstNumber;
}
- (float)minus:(float)firstNumber and:(float)secendNumber{
    return firstNumber - secendNumber;
}
- (float)multiplay:(float)firstNumber and:(float)secendNumber{
    return firstNumber * secendNumber;
}
- (float)devishen:(float)firstNumber and:(float)secendNumber{
    return firstNumber / secendNumber;
}
- (float)reversSign:(float)secondNumber{
    return  secondNumber * -1;
}
- (float)procent:(float)secondNumber{
    return secondNumber / 100;
}

- (void)UpDateTextView:(NSString*)numbers{
    NSString *phrase = [_text stringByAppendingString: numbers];
    [_textView setText: phrase];
    _text = phrase;
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Send messge to ViewControllerResult
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ViewControllerResult *vcr = [segue destinationViewController];
    vcr.resultText = _sendAnswerOtherWindows;
    
}

@end