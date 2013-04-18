//
//  FNNoteViewViewController.h
//  FloatNote
//
//  Created by Sam Clark on 4/17/13.
//  Copyright (c) 2013 worthcs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NoteReminder.h"

@interface FNNoteViewViewController : UIViewController{
    NoteReminder *note;
}
   
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@property (weak, nonatomic) IBOutlet UILabel *bodyLabel;

@property (weak, nonatomic) IBOutlet UILabel *latLabel;

@property (weak, nonatomic) IBOutlet UILabel *longLabel;

@property (weak, nonatomic) IBOutlet UILabel *ariveLabel;

@property (weak, nonatomic) IBOutlet UILabel *radiusLabel;

@property(nonatomic,retain) NoteReminder *note;

@end