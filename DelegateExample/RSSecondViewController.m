//
//  RSSecondViewController.m
//  DelegateExample
//
//  Created by Raphael Silva on 10/28/14.
//  Copyright (c) 2014 peagasilva. All rights reserved.
//

#import "RSSecondViewController.h"

@interface RSSecondViewController () <UITableViewDataSource, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation RSSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView.estimatedRowHeight = 64;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)didClickButton:(RSTableViewCell *)cell {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    
    // Actions, actions, and more actions!
    
    NSNumber *n = [NSNumber numberWithUnsignedInteger:indexPath.row + 1];
    
    NSLog(@"Button from cell #%d clicked! :) %s", [n intValue], __PRETTY_FUNCTION__);
    
    [self alertWithTitle:@"Button Clicked!" andMessage:[NSString stringWithFormat:@"You clicked on the button from the row #%d", [n intValue]]];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RSTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.delegate = self;
    
    NSNumber *n = [NSNumber numberWithUnsignedInteger:indexPath.row + 1];
    
    cell.title.text = [NSString stringWithFormat:@"Title #%d", [n intValue]];
    cell.title.numberOfLines = 0;
    
    if (indexPath.row % 2) {
        cell.subtitle.text = [NSString stringWithFormat:@"Subtitle... \n\nwith different height :)"];
    } else {
        cell.subtitle.text = [NSString stringWithFormat:@"Subtitle"];
    }
    
    cell.title.numberOfLines = 0;
    
//    NSLog(@"%f", [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height);
    
    return cell;
}


#pragma mark - Alert

- (void)alertWithTitle:(NSString *)title andMessage:(NSString *)message {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"OK", nil];
    
    [alert show];
}

@end
