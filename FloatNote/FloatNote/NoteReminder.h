//
//  NoteReminder.h
//  FloatNote
//
//  Created by Sam Clark on 4/14/13.
//  Copyright (c) 2013 worthcs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface NoteReminder : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * lat;
@property (nonatomic, retain) NSNumber * lng;
@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSNumber * radius;
@property (nonatomic, retain) NSNumber * doa;
@property (nonatomic, retain) NSNumber * status;

@end
