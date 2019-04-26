//
//  ViewController.m
//  TableView
//
//  Created by Esraa Hassan on 4/25/19.
//  Copyright © 2019 Salma. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITableView *table;

@end

@implementation ViewController{
    NSArray *labelNames;
    NSArray *labelDetails;
    NSArray *labelImages;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    labelNames = @[@"one", @"two", @"three"];
    labelDetails = @[@"details", @"details", @"details"];
    labelImages = @[@"friend.png", @"friend.png", @"friend.png"];
    _table.delegate = self;
    _table.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"cell";
    
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    cell.imageView.image = [UIImage imageNamed:[labelImages objectAtIndex:indexPath.row]];
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

@end
