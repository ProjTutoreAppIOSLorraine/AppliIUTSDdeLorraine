//
//  ActuViewController.m
//  AppliIUTSDdeLorraine
//
//  Created by Noël Prévault on 21/01/2015.
//  Copyright (c) 2015 Damien Bannerot. All rights reserved.
//

#import "ActuViewController.h"

@interface ActuViewController ()

@end

@implementation ActuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *fullURL = @"http://www.univ-lorraine.fr/";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_Actu loadRequest:requestObj];
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

- (void)dealloc {
    [_Actu release];
    [super dealloc];
}
@end
