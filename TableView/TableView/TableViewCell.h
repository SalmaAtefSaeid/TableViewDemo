//
//  TableViewCell.h
//  TableView
//
//  Created by Esraa Hassan on 4/25/19.
//  Copyright © 2019 Salma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *leftLabel;
@property (strong, nonatomic) IBOutlet UILabel *rightLabel;
@property (strong, nonatomic) IBOutlet UIImageView *im;

@end
