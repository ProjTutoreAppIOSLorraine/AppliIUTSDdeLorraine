//
//  ActuViewController.h
//  AppliIUTSDdeLorraine
//
//  Created by Noël Prévault on 21/01/2015.
//  Copyright (c) 2015 Damien Bannerot. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ActuViewController : UIViewController<UIWebViewDelegate>{
    
    IBOutlet UIWebView *Actu;
}

@property (nonatomic, retain) IBOutlet UIWebView *Actu;

- (IBAction)done:(id)sender;
@end
















