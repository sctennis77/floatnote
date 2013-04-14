//
//  FNTableViewController.h
//  FloatNote
//
//  Created by Steve Dini on 4/14/13.
//  Copyright (c) 2013 worthcs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "NoteReminder.h"

@interface FNTableViewController : UITableViewController

// An array to house all of our fetched Label objects
@property (strong, nonatomic) NSArray *noteArray;

@end