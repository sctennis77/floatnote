//
//  MapViewController.h
//  FloatNote
//
//  Created by Sam Clark on 4/14/13.
//  Copyright (c) 2013 worthcs. All rights reserved.
//

#import <UIKit/UIKit.h>


#import <GoogleMaps/GoogleMaps.h>
#import "MYCLController.h"


@interface MapViewController : UIViewController<GMSMapViewDelegate>{
   MyCLController *locationController;
}

@end
