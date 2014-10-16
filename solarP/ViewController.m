//
//  ViewController.m
//  solarP
//
//  Created by Chris Martin on 9/24/14.
//  Copyright (c) 2014 Chris Martin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Loaded properly");
    //self.splashScreenBackground.hidden = isHidden;
    self.bookmarkPage.hidden = YES;
    self.menuPage.hidden = YES;
    self.helpPage.hidden = YES;
    self.resultsPage.hidden = YES;
    //self.titleText.text = @"Solar Suitability";
    self.solarPIcon.text= @"SolarP";
    //[self createSplashScreen];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)closeSideBar{
    self.resultsPage.hidden = YES;
    self.histogramPage.hidden = YES;
    self.savePage.hidden = YES;
}

/*- (void)createSplashScreen{
    isHidden = NO;
    self.splashScreenBackground.hidden = isHidden;
    NSLog(@"Loaded Splash");
    self.splashScreenText.text = @"Splash Screen";
    self.splashScreenBodyText.text= @"WELCOME\
    \
    Tap anywhere on this map of Minnesota to view solar radiation per square meter, or tap the  icon to measure insolation at your current location.";
}*/

int mapShow=0;

- (IBAction)openBookmarkPage:(id)sender {
    if (self.bookmarkPage.hidden == YES){
        NSLog(@"BOOK HIDDEN");
        self.menuPage.hidden = YES;
        self.bookmarkPage.hidden = NO;
    }else{
        self.bookmarkPage.hidden = YES;
    }
}
- (IBAction)openMenuPage:(id)sender {
    if (self.menuPage.hidden == YES){
        NSLog(@"MENU HIDDEN");
        self.bookmarkPage.hidden = YES;
        self.menuPage.hidden = NO;
    }else{
        self.menuPage.hidden = YES;
    }
}
- (IBAction)openResultsPage:(id)sender {
    if (self.resultsPage.hidden == YES){
        NSLog(@"MENU HIDDEN");
        self.helpPage.hidden = YES;
        self.resultsPage.hidden = NO;
    }else{
        self.resultsPage.hidden = YES;
    }
}
- (IBAction)openHelpPage:(id)sender {
    if (self.helpPage.hidden == YES){
        NSLog(@"MENU HIDDEN");
        self.resultsPage.hidden = YES;
        self.helpPage.hidden = NO;
    }else{
        self.helpPage.hidden = YES;
    }
}
- (IBAction)openHistogramPage:(id)sender {
    [self closeSideBar];
    self.histogramPage.hidden = NO;
}

- (IBAction)openSavePage:(id)sender {
    [self closeSideBar];
    self.savePage.hidden = NO;
    
}
- (IBAction)toggleSolar:(id)sender {
    NSLog(@"SOLAR CLICK");
    NSLog(@"Map1 clicked");
    mapShow=1;
    [self updateDisplay];
    /*if (self.solarView.hidden == YES){
        self.solarView.hidden = NO;
        self.aerialView.hidden = YES;
        self.streetView.hidden = YES;
    }*/
}
- (IBAction)toggleAerial:(id)sender {
    NSLog(@"AERIAL CLICK");
    NSLog(@"Map2 clicked");
    mapShow=2;
    [self updateDisplay];
    
    /*if (self.aerialView.hidden == YES){
        self.aerialView.hidden = NO;
        self.solarView.hidden = YES;
        self.streetView.hidden = YES;
    }*/
}

- (IBAction)toggleStreets:(id)sender {
    NSLog(@"STREETS CLICK");
    NSLog(@"Map3 clicked");
    mapShow=3;
    [self updateDisplay];
    
    /*NSLog(@"SOLAR CLICK");
    if (self.streetView.hidden == YES){
        self.streetView.hidden = NO;
        self.aerialView.hidden = YES;
        self.solarView.hidden = YES;
    }*/
}
- (IBAction)toggleResults:(id)sender {
    NSLog(@"RESULTS CLICK");
}

- (void)updateDisplay{
    
    switch (mapShow) {
        case 1:
            self.solarView.image = [UIImage imageNamed:@"map_background.tiff"];
            break;
        case 2:
            self.solarView.image = [UIImage imageNamed:@"redXCircle.jpg"];
            break;
        case 3:
            self.solarView.image = [UIImage imageNamed:@"redXCircle.jpg"];
            break;
        default:
            self.solarView.image = [UIImage imageNamed:@"map_background.tiff"];
            break;
    }
}

@end
