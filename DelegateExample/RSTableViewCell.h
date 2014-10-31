//
//  RSTableViewCell.h
//  DelegateExample
//
//  Created by Raphael Silva on 10/28/14.
//  Copyright (c) 2014 peagasilva. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSTableViewCell;

@protocol RSTableViewCellDelegate <NSObject>

@optional
-(void) didClickButton:(RSTableViewCell *)cell;

@end

@interface RSTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *subtitle;
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) id<RSTableViewCellDelegate> delegate;

@end
