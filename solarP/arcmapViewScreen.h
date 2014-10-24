//
//  arcmapViewScreen.h
//  solarP
//
//  Created by Chris Martin on 10/22/14.
//  Copyright (c) 2014 Chris Martin. All rights reserved.
//

#import <UIKit/UIKit.h>

//Import the header file for ArcGIS framework
#import <ArcGIS/ArcGIS.h>

@interface arcmapViewScreen : UIViewController
@property (strong, nonatomic) IBOutlet AGSMapView *mapView;
@property (weak, nonatomic) IBOutlet UIButton *goToReport;

@property (strong, nonatomic) IBOutlet UIButton *solarButton;
- (IBAction)displaySolar:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *aerialButton;
- (IBAction)displayAerial:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *streetButton;
- (IBAction)displayStreet:(id)sender;

// CONTROLS
@property (weak, nonatomic) IBOutlet UIButton *zoomInButton;
- (IBAction)zoomIn:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *zoomOutButton;
- (IBAction)zoomOut:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *zoomToButton;
- (IBAction)zoomTo:(id)sender;
@end



