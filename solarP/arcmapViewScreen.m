//
//  arcmapViewScreen.m
//  solarP
//
//  Created by Chris Martin on 10/22/14.
//  Copyright (c) 2014 Chris Martin. All rights reserved.
//

#import "arcmapViewScreen.h"

@interface arcmapViewScreen ()

@end

@implementation arcmapViewScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Add a basemap tiled layer
    NSURL* url = [NSURL URLWithString:@"http://server.arcgisonline.com/arcgis/rest/services/World_Imagery/MapServer"];
    AGSTiledMapServiceLayer *aerialLayer = [AGSTiledMapServiceLayer tiledMapServiceLayerWithURL:url];
    [self.mapView addMapLayer:aerialLayer withName:@"Aerial Basemap Tiled Layer"];
    
    //enable wrap around
    [self.mapView enableWrapAround];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clearMap{
    [self.mapView removeMapLayerWithName:@"Aerial Basemap Tiled Layer"];
    [self.mapView removeMapLayerWithName:@"Street Basemap Tiled Layer"];

}

- (IBAction)displaySolar:(id)sender {
    [self clearMap];
    NSURL* url = [NSURL URLWithString: @"http://gis.uspatial.umn.edu/arcgis/rest/services/solar/Solar/ImageServer/"];
    AGSImageServiceLayer* solarLayer = [AGSImageServiceLayer imageServiceLayerWithURL: url];
    [self.mapView addMapLayer:solarLayer withName:@"Solar Basemap Tiled Layer"];
}

- (IBAction)displayAerial:(id)sender {
    [self clearMap];
    NSURL* url = [NSURL URLWithString:@"http://server.arcgisonline.com/arcgis/rest/services/World_Imagery/MapServer"];
    AGSTiledMapServiceLayer *aerialLayer = [AGSTiledMapServiceLayer tiledMapServiceLayerWithURL:url];
    [self.mapView addMapLayer:aerialLayer withName:@"Aerial Basemap Tiled Layer"];
}
- (IBAction)displayStreet:(id)sender {
    [self clearMap];
    NSURL* url = [NSURL URLWithString:@"http://server.arcgisonline.com/arcgis/rest/services/World_Street_Map/MapServer/"];
    AGSTiledMapServiceLayer *aerialLayer = [AGSTiledMapServiceLayer tiledMapServiceLayerWithURL:url];
    [self.mapView addMapLayer:aerialLayer withName:@"Street Basemap Tiled Layer"];
    
    
}


- (IBAction)zoomIn:(id)sender {
    [self.mapView zoomIn:YES];
}
- (IBAction)zoomOut:(id)sender {
    [self.mapView zoomOut:YES];
}
- (IBAction)zoomTo:(id)sender {
    AGSPoint* centerPoint = [AGSPoint pointWithX:44.971632
                                               y:-93.243241
                                spatialReference:_mapView.spatialReference
                             
                             //[AGSSpatialReference wgs84SpatialReference]
                             ];
    
    NSLog(@"Centering...");
    [self.mapView centerAtPoint:centerPoint animated:YES];
}

@end
