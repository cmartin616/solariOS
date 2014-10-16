//
//  ViewController.h
//  solarP
//
//  Created by Chris Martin on 9/24/14.
//  Copyright (c) 2014 Chris Martin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titleText;

// BACKGROUND
@property (weak, nonatomic) IBOutlet UIImageView *solarView;
@property (weak, nonatomic) IBOutlet UIImageView *streetView;
@property (weak, nonatomic) IBOutlet UIImageView *aerialView;


// MAIN LAYOUT
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UILabel *solarPIcon;

@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;
@property (weak, nonatomic) IBOutlet UIButton *resultsTab;
@property (weak, nonatomic) IBOutlet UIView *resultsPage;
- (IBAction)openResultsPage:(id)sender;

// BOTTOM BAR

@property (weak, nonatomic) IBOutlet UIImageView *bottomBar;
@property (weak, nonatomic) IBOutlet UIButton *resultsButton;
- (IBAction)toggleResults:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *streetsButton;
- (IBAction)toggleStreets:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *aerialButton;
- (IBAction)toggleAerial:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *solarButton;
- (IBAction)toggleSolar:(id)sender;

// SIDE NAV

@property (weak, nonatomic) IBOutlet UILabel *helpLabel;
@property (weak, nonatomic) IBOutlet UIButton *helpTab;
@property (weak, nonatomic) IBOutlet UIView *helpPage;
- (IBAction)openHelpPage:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *bookmarkLabel;
@property (weak, nonatomic) IBOutlet UIButton *bookmarkTab;
@property (weak, nonatomic) IBOutlet UIView *bookmarkPage;
- (IBAction)openBookmarkPage:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *menuLabel;
@property (weak, nonatomic) IBOutlet UIButton *menuTab;
@property (weak, nonatomic) IBOutlet UIView *menuPage;
- (IBAction)openMenuPage:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *histogramPage;
@property (weak, nonatomic) IBOutlet UIButton *histogramLowerTab;
- (IBAction)openHistogramPage:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *resultsLowerTab;

@property (weak, nonatomic) IBOutlet UIView *savePage;
@property (weak, nonatomic) IBOutlet UIButton *saveLowerTab;
- (IBAction)openSavePage:(id)sender;

@end

