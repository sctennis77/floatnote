//
//  FNNoteViewViewController.m
//  FloatNote
//
//  Created by Sam Clark on 4/17/13.
//  Copyright (c) 2013 worthcs. All rights reserved.
//

#import "FNNoteViewViewController.h"

@interface FNNoteViewViewController ()

@end


@implementation FNNoteViewViewController
@synthesize note;
@synthesize titleLabel;
@synthesize bodyLabel;
@synthesize longLabel;
@synthesize latLabel;
@synthesize ariveLabel;
@synthesize radiusLabel;
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
    
    /*@property (nonatomic, retain) NSString * title;
     @property (nonatomic, retain) NSNumber * id;
     @property (nonatomic, retain) NSNumber * lat;
     @property (nonatomic, retain) NSNumber * lng;
     @property (nonatomic, retain) NSString * body;
     @property (nonatomic, retain) NSNumber * radius;
     @property (nonatomic, retain) NSNumber * doa;
     @property (nonatomic, retain) NSNumber * status;*/

    [super viewDidLoad];
    self.titleLabel.text = note.title;
    self.bodyLabel.text = note.body;
    self.latLabel.text =  [note.lat stringValue];
    self.longLabel.text = [note.lng stringValue];
    self.radiusLabel.text = [note.radius stringValue];
    self.ariveLabel.text = [note.doa stringValue];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
