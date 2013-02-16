//
//  LPA2IViewController.h
//  AppliIUTSDdeLorraine
//
//  Created by B2IB on 14/02/13.
//  Copyright (c) 2013 Damien Bannerot. All rights reserved.
//

#import "EdtViewController.h"

@interface LPA2IViewController : EdtViewController{
    IBOutlet UIWebView *webEdt;
    IBOutlet UIBarButtonItem *next;
    IBOutlet UIBarButtonItem *before;
    int numWeek;
}

@property (nonatomic, retain) UIWebView *webEdt;
@property (nonatomic, retain) UIBarButtonItem *next;
@property (nonatomic, retain) UIBarButtonItem *before;

- (IBAction) next: (UIBarButtonItem *) sender;
- (IBAction) before: (UIBarButtonItem *) sender;

@end
