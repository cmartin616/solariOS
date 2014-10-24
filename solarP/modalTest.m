//
//  modalTest.m
//  solarP
//
//  Created by Chris Martin on 10/24/14.
//  Copyright (c) 2014 Chris Martin. All rights reserved.
//

#import "modalTest.h"

@interface modalTest ()

@end

@implementation modalTest

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)modalClick:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];}
@end
