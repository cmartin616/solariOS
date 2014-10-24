//
//  arcmapViewScreen.m
//  solarP
//
//  Created by Chris Martin on 10/22/14.
//  Copyright (c) 2014 Chris Martin. All rights reserved.
//

#import "arcmapViewScreen.h"

@interface arcmapViewScreen () <AGSMapViewLayerDelegate>

@end

@implementation arcmapViewScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //2. Set the map view's layerDelegate
    self.mapView.layerDelegate = self;
    
    //Add a basemap tiled layer
    NSURL* url = [NSURL URLWithString:@"http://server.arcgisonline.com/arcgis/rest/services/World_Imagery/MapServer"];
    AGSTiledMapServiceLayer *aerialLayer = [AGSTiledMapServiceLayer tiledMapServiceLayerWithURL:url];
    [self.mapView addMapLayer:aerialLayer withName:@"Aerial Basemap Tiled Layer"];
    
    //NSLog(@"Spatial Reference : %@", aerialLayer.spatialReference);
    
    //enable wrap around
    [self.mapView enableWrapAround];
    
    // Zoom to envelop
    
    //AGSSpatialReference *sr = [AGSSpatialReference webMercatorSpatialReference];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//3. Implement the layer delegate method
- (void)mapViewDidLoad:(AGSMapView *) mapView {
    //do something now that the map is loaded
    //for example, show the current location on the map
    NSLog(@"Spatial Reference2: %@", self.mapView.spatialReference);
    NSLog(@"Trying to Zoom");
    //NSLog(@"SR: %@", sr);
    AGSEnvelope *envelope = [AGSEnvelope envelopeWithXmin:-89.566667 ymin:63.566667 xmax:97.2  ymax:99.383333  spatialReference:self.mapView.spatialReference];
    NSLog(@"Envelope: %@", envelope);
    [self.mapView zoomToEnvelope:envelope animated:YES];
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
    AGSTiledMapServiceLayer *streetLayer = [AGSTiledMapServiceLayer tiledMapServiceLayerWithURL:url];
    [self.mapView addMapLayer:streetLayer withName:@"Street Basemap Tiled Layer"];
    
    
}


- (IBAction)zoomIn:(id)sender {
    [self.mapView zoomIn:YES];
}
- (IBAction)zoomOut:(id)sender {
    [self.mapView zoomOut:YES];
}
- (IBAction)zoomTo:(id)sender {
    
    AGSSpatialReference *sr = [AGSSpatialReference webMercatorSpatialReference];
    AGSPoint* centerPoint = [AGSPoint pointWithX:44.971632
                                               y:-93.243241
                                spatialReference:sr
                             ];
    
    NSLog(@"Centering...");
    NSLog(@"Center Point: %@", centerPoint);
    [self.mapView centerAtPoint:centerPoint animated:YES];
}

@end
