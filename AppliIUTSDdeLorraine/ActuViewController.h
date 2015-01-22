//
//  ActuViewController.h
//  AppliIUTSDdeLorraine
//
//  Created by Noël Prévault on 21/01/2015.
//  Copyright (c) 2015 Damien Bannerot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlidableView.h"


@interface ActuViewController : UIViewController<UIWebViewDelegate,SlidableView>{
    
    IBOutlet UIWebView *myDocView;
    IBOutlet UIImageView *topImage;
    IBOutlet UIView *viewAnimates;
}

@property (nonatomic, retain) IBOutlet UIWebView *myDocView;
@property (nonatomic, retain) IBOutlet UIView *viewAnimates;
@property (nonatomic, retain) IBOutlet UIImageView *topImage;

- (IBAction)done:(id)sender;


@property (retain, nonatomic) IBOutlet UIWebView *Actu;

@end 














