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
    
    // Grab the context
    NSManagedObjectContext *context = [[self appDelegate] managedObjectContext];
    
    // Grab the Label entity
    NoteReminder *nr = [NSEntityDescription insertNewObjectForEntityForName:@"NoteReminder" inManagedObjectContext:context];
    
    // Set label name
    NSString *title = self.titleField.text;
    NSString *body = self.bodyField.text;
    NSString *doa = [self.doaButton titleForSegmentAtIndex:self.doaButton.selectedSegmentIndex];
    
    NSLog(@"Creating reminder:\nt: %@\nb: %@\ndoa: %@",title,body,doa);
    nr.title = self.titleField.text;
    
    
    // Save everything
    NSError *error = nil;
    if ([context save:&error]) {
        NSLog(@"The save was successful!");
    } else {
        NSLog(@"The save wasn't successful: %@", [error userInfo]);
    }
    
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
