//
//  AppDelegate.h
//  FloatNote
//
//  Created by Sam Clark on 4/14/13.
//  Copyright (c) 2013 worthcs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

-(void) create:(NSString *) title
              :(NSNumber *) lat
              :(NSNumber *) lng
              :(NSString *) body
              :(NSNumber *) radius
              :(NSNumber *) doa
              :(NSNumber *) status;
-(NSNumber*) get_id;
-(NSArray *) read;

- (void) delete;

@end

