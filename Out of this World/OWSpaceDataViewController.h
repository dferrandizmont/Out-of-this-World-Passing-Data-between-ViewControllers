//
//  OWSpaceDataViewController.h
//  Out of this World
//
//  Created by Eliot Arntz on 10/17/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>

/* The angle brakets mean that the class now conforms to the UITableViewDelegate and UITableViewDataSource Protocols. In short we get access to the methods defined in the UITableViewDelegate and UITableViewDataSource */
@interface OWSpaceDataViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
