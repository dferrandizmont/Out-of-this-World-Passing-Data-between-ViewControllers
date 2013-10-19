//
//  OWSpaceDataViewController.m
//  Out of this World
//
//  Created by Eliot Arntz on 10/17/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "OWSpaceDataViewController.h"

@interface OWSpaceDataViewController ()

@end

@implementation OWSpaceDataViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    /* Update the view and TableView's background color. */
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    
    /* Set the TableView's delegate and datasource properties. This will allow the OWSpaceDataViewController to recieve messages from the UITableViewDelegate and UITableViewDataSource */ 
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

/* Implement the method cellForRowAtIndexPath to determine what UITableViewCell objects our TableView should display. First create a cell identifier. Although we haven't covered the static keyword in depth it is useful when generating a string we want to be consistent for all cells. This cell identifier must be equal to the identifier for the prototype cell in the TableView. Create a UITableViewCell object. Use the method dequeueReusableCellWithIdentifier to reuse a cell after we create it the first time to save memory. Update the cell's textLabel to text.*/
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DataCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = @"Data";
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}


@end
