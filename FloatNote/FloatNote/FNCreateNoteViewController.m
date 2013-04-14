//
//  FNCreateNoteViewController.m
//  FloatNote
//
//  Created by Sam Clark on 4/14/13.
//  Copyright (c) 2013 worthcs. All rights reserved.
//

#import "FNCreateNoteViewController.h"
#import "AppDelegate.h" 
#import "NoteReminder.h"
#import "MapViewController.h"
@interface FNCreateNoteViewController ()

@end

@implementation FNCreateNoteViewController

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
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStyleBordered target:self action:@selector(addNote)];
    self.navigationItem.rightBarButtonItem = item;
    
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(dismiss)];
    self.navigationItem.leftBarButtonItem = item2;
}


- (void) addNote {
    
  
    
    // get reminder init values
    // should we spoof lat lng here and update next page
    // and radius
    
    NSString *title = self.titleField.text;
    NSNumber *lat = [NSNumber numberWithInt:0];
    NSNumber *lng = [NSNumber numberWithInt:0];
    NSString *body = self.bodyField.text;
    NSNumber *radius = [NSNumber numberWithInt:3];
    NSString *doa = [self.doaButton titleForSegmentAtIndex:self.doaButton.selectedSegmentIndex];
    NSNumber *doa_num =[NSNumber numberWithInt:1];
    NSNumber *status =[NSNumber numberWithInt:0];
  
    [[self appDelegate] create:title :lat :lng :body :radius :doa_num :status];
 
    
    
    NSLog(@"Creating reminder:\nt: %@\nb: %@\ndoa: %@",title,body,doa);
    
    
    
  
    // instead of dismiss we want to go to the map view
    [self dismiss];
}



-(BOOL) checkInput:(NSString*)title :(NSString*)body :(NSString*)doa {
    if ([title length] == 0){
        NSLog(@"No Title");
        return FALSE;
    }
    if ([body length] == 0){
        NSLog(@"No Body");
        return FALSE;
    }
    if ([doa length] == 0){
        NSLog(@"No doa");
        return FALSE;
    }
    return TRUE;

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- Note Reminder Context Code

- (AppDelegate *)appDelegate {
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

- (void) dismiss {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
