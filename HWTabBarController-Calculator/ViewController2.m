//
//  ViewController2.m
//  HWTabBarController-Calculator
//
//  Created by Ленар on 16.08.16.
//  Copyright © 2016 com.itisiOSlab. All rights reserved.
//

#import "ViewController2.h"
#import "TableViewCell.h"

static NSString *CELL_Identifier = @"cell";

@interface ViewController2 () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIImageView *secretImage;
@property (strong, nonatomic) NSArray *arr;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    _arr = @[@"cat1", @"cat2", @"cat3", @"cat4", @"cat5", @"cat6"];
    UINib *customCellNib = [UINib nibWithNibName:@"TableViewCell" bundle:nil];
    [self.tabelView registerNib:customCellNib forCellReuseIdentifier:CELL_Identifier];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView { // количество секций в таблице
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section { //количество ячеек
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = (TableViewCell*)[tableView dequeueReusableCellWithIdentifier:CELL_Identifier forIndexPath:indexPath];
    cell.cellLabel.text = _arr[indexPath.row];
    [cell.cellImage setImage:[UIImage imageNamed:_arr[indexPath.row]]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}



-(void)chooseImage : (int)imageNumber {
    switch (imageNumber) {
        case 0:
            [_secretImage setImage:[UIImage imageNamed:@"cat1"]];
            break;
        case 1:
            [_secretImage setImage:[UIImage imageNamed:@"cat2"]];
            break;
        case 2:
            [_secretImage setImage:[UIImage imageNamed:@"cat3"]];
            break;
        case 3:
            [_secretImage setImage:[UIImage imageNamed:@"cat4"]];
            break;
        case 4:
            [_secretImage setImage:[UIImage imageNamed:@"cat5"]];
            break;
        case 5:
            [_secretImage setImage:[UIImage imageNamed:@"cat6"]];
            break;
        default:
            break;
    }
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self chooseImage:(int)indexPath.row];
}

- (IBAction)secretButton:(id)sender {
    int randomValue = 0 +(random() % 6 - 0);
    NSLog(@"%i", randomValue);
    [self chooseImage:randomValue];
}

@end