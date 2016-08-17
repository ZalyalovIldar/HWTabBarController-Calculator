//
//  ViewController.h
//  HWTabBarController-Calculator
//
//  Created by Ildar Zalyalov on 16.08.16.
//  Copyright © 2016 com.itisiOSlab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UILabel *displayLabel;
    double n,m;
    NSInteger operation;
    BOOL operationEnter;
    BOOL doubleOperation;
    NSString* nConstant;
}

-(IBAction)del:(id)sender;

-(IBAction)clear:(id)sender;

-(IBAction)num:(id)sender;

-(IBAction)operation:(id)sender;

-(IBAction)inverse:(id)sender;

-(IBAction)interest:(id)sender;

@end


