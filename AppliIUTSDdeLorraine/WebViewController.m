//
//  WebViewController.m
//  AppliIUTSDdeLorraine
//
//  Created by B2IB on 09/01/13.
//  Copyright (c) 2013 Damien Bannerot. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController()

@end

@implementation WebViewController
@synthesize webView;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *fullURL = @"http://www.facebook.com/AppliIUTSD?ref=hl";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}


@end
