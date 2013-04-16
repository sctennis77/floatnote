//
//  MapViewController.m
//  FloatNote
//
//  Created by Sam Clark on 4/14/13.
//  Copyright (c) 2013 worthcs. All rights reserved.
//

#import "MapViewController.h"



@implementation MapViewController {
    GMSMapView *mapView_;
}

// You don't need to modify the default initWithNibName:bundle: method.

- (void)loadView {
    
   
    
    locationController = [[MyCLController alloc] init];
    [locationController.locationManager startUpdatingLocation];
    
    NSLog(@"%f,%f",locationController.locationManager.location.coordinate.latitude,locationController.locationManager.location.coordinate.longitude);
    
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:locationController.locationManager.location.coordinate.latitude
                                                            longitude:locationController.locationManager.location.coordinate.longitude
                                                                 zoom:6];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    
    mapView_.myLocationEnabled = YES;
  
    
    mapView_.delegate = self;
    
    self.view = mapView_;
    
  
    GMSMarkerOptions *options = [[GMSMarkerOptions alloc] init];
    options.position = CLLocationCoordinate2DMake(locationController.locationManager.location.coordinate.latitude,locationController.locationManager.location.coordinate.longitude);
    options.title = @"Current";
    options.snippet = @"Location";
    [mapView_ addMarkerWithOptions:options];
}



#pragma mark - GMSMapViewDelegate

- (void)mapView:(GMSMapView *)mapView
didTapAtCoordinate:(CLLocationCoordinate2D)coordinate {
    GMSMarkerOptions *options = [[GMSMarkerOptions alloc] init];
    options.position = CLLocationCoordinate2DMake(coordinate.latitude,coordinate.longitude);
    options.title = @"Tapped";
    options.snippet = @"Location";
    [mapView clear]; //get rid of any previously placed markers
    [mapView addMarkerWithOptions:options];
    NSLog(@"You tapped at %f,%f", coordinate.latitude, coordinate.longitude);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
