//
//  RSFirstViewController.m
//  DelegateExample
//
//  Created by Raphael Silva on 10/28/14.
//  Copyright (c) 2014 peagasilva. All rights reserved.
//

#import "RSFirstViewController.h"

@interface RSFirstViewController ()

@end

@implementation RSFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"goToSecondVCSegue"]) {
        NSLog(@"Going to Second View Controller %s", __PRETTY_FUNCTION__);
    }
}

@end
