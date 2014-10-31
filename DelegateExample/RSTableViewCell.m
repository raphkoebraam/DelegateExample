//
//  RSTableViewCell.m
//  DelegateExample
//
//  Created by Raphael Silva on 10/28/14.
//  Copyright (c) 2014 peagasilva. All rights reserved.
//

#import "RSTableViewCell.h"


@implementation RSTableViewCell

- (IBAction)buttonClicked:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(didClickButton:)]){
        [self.delegate didClickButton:self];
    }
}

@end
