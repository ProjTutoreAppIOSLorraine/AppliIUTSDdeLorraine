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

@synthesize Actu;

- (IBAction)done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL * resourcePathURL = [[NSBundle mainBundle] resourceURL];
    if(resourcePathURL)
    {
        NSURL * urlToLoad = [resourcePathURL
                             URLByAppendingPathComponent: @"ActuTwitter.html"];
        if(urlToLoad)
        {
            NSURLRequest * req = [NSURLRequest requestWithURL: urlToLoad];
            [Actu loadRequest: req];
        }
    }
}

- (BOOL )shouldAutorotate{
    return NO;
}
@end
