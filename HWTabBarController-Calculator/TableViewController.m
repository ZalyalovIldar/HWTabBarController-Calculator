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
    
    UINib *customCellNib = [UINib nibWithNibName:@"CustomCell" bundle:nil];//мы регистрируем нашу кастомную ячейку в таблице
    [self.tableView registerNib:customCellNib forCellReuseIdentifier:CELL_Identifier];//если так не сделать, то таблица не поймет какую ячейку откуда брать по IndexPath
    //потому что мы удалили со сториборда ячейку
    //и по сути она вообще не поймет, про какую ячейку мы ведем речь, если она не зарегана в ней
    

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

#pragma mark - Navigation

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Предупреждение" message:@"Вы уверены, что хотите перейти?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"Да" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        [self performSegueWithIdentifier:@"segue" sender:self];
    }];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"Отмена" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:action1];
    [alert addAction:action2];
    [self presentViewController:alert animated:true completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    ViewController3 *vc3 = [segue destinationViewController];
    vc3.labelText = _arr[indexPath.row];
}
@end
