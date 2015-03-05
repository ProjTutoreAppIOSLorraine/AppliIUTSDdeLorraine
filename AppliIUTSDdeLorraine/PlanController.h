//
//  PlanController.h
//  AppliIUTSDdeLorraine
//
//  Created by Noël Prévault on 26/02/2015.
//  Copyright (c) 2015 Damien Bannerot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlidableView.h"

@interface PlanController : UIViewController<UIScrollViewDelegate>{
    IBOutlet UIView *viewAnimates;
    IBOutlet UIImageView *topImage;
    IBOutlet UIButton *myButtonBack;
    
}


@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UIImageView *topImage;
@property (nonatomic, retain) IBOutlet UIButton *myButtonBack;

- (IBAction)back:(id)sender;


@end
