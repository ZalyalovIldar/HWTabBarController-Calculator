//
//  TableViewController.m
//  HWTabBarController-Calculator
//
//  Created by Ленар on 17.08.16.
//  Copyright © 2016 com.itisiOSlab. All rights reserved.
//

#import "TableViewController.h"
#import "CustomCell.h"
#import "ViewController.h"
#import "ViewController3.h"

static NSString *CELL_Identifier = @"cell";

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINib *customCellNib = [UINib nibWithNibName:@"CustomCell" bundle:nil];
    [self.tableView registerNib:customCellNib forCellReuseIdentifier:CELL_Identifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:CELL_Identifier forIndexPath:indexPath];
    cell.cellResultLabel.text = _arr[indexPath.row];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"segue" sender:self];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    ViewController3 *vc3 = [segue destinationViewController];
    vc3.labelText = _arr[indexPath.row];
}
@end
