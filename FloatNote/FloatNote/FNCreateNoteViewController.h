//
//  FNCreateNoteViewController.h
//  FloatNote
//
//  Created by Sam Clark on 4/14/13.
//  Copyright (c) 2013 worthcs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FNCreateNoteViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *bodyField;

@property (weak, nonatomic) IBOutlet UITextField *titleField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *doaButton;

@property (weak, nonatomic) IBOutlet UIButton *mapButton;

-(id)switchToMap:(id)sender;
@end
