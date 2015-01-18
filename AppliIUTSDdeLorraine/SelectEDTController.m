//
//  SelectEDTController.m
//  AppliIUTSDdeLorraine
//
//  Created by Kerautret on 16/02/13.
//  Copyright (c) 2013 Damien Bannerot. All rights reserved.
//

#import "SelectEDTController.h"
#import "EtudiantController.h"
#import "SlidableView.h"
#import "EdtViewController.h"

@interface SelectEDTController ()

@end

@implementation SelectEDTController

@synthesize myEDTName, myEDTCode, topImage, viewAnimates;


- (void) initData{
    // Custom initialization
    myEDTName = [[NSMutableString alloc] init];
    myEDTCode = [[NSMutableString alloc] init];
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {


    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}


- (void)viewDidLoad
{
    // Do any additional setup after loading the view.

    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) selectEDT: (UIButton *) sender{
    //[myButtonBack setEnabled:NO];
    int codeEDT = (int) sender.tag;
    // SRC1 SRC2 LP%
    if(codeEDT ==0){
        [myEDTName setString:  @"SRC 1"];
        [myEDTCode setString:@"50788,50789,50790,50791"];
    }else if (codeEDT==1){
        [myEDTName setString:  @"SRC 2"];
        [myEDTCode setString:@"63204,63205,63206,63208,165617,165618,165619"];
    }else if(codeEDT==2){
        [myEDTName setString:  @"LP CDG"];
        [myEDTCode setString:@"109585,109586"];
    }else if(codeEDT==4){
        [myEDTName setString:  @"TECAM "];
        [myEDTCode setString:@"109587,124441"];
    }
    // Info1 Info2 LPs
    else if(codeEDT==5){
        [myEDTName setString:  @"Info 1"];
        [myEDTCode setString:@"48493,48494,48495,48496"];
        [self performSegueWithIdentifier:@"visuedt" sender:self];
    }    else if(codeEDT==6){
        [myEDTName setString:  @"Info 2"];
        [myEDTCode setString:@"61288,61289,61290,61291"];
    } else if(codeEDT==7){
        [myEDTName setString:  @"LP IMM"];
        [myEDTCode setString:@"59530,59531,137921"];
    }else if(codeEDT==8){
        [myEDTName setString:  @"LP ISN"];
        [myEDTCode setString:@"35674,35675,161481"];
    }
    // GEII 1 2  LPs
    else if(codeEDT==9){
        [myEDTName setString:  @"LP GEII 1"];
        [myEDTCode setString:@"2372,2375,2394,2398"];
    }
    else if(codeEDT==10){
        [myEDTName setString:  @"GEII 2"];
        [myEDTCode setString:@"59766,59767,59768,59769"];
    }else if(codeEDT==11){
        [myEDTName setString:  @"LP A2I"];
        [myEDTCode setString:@"31253,31254,31255,47973,31257,31258,31259,47974,31261,31726,32043,47975,34559,34561,34563,47976,35497,35499,34593,34834,35307,47971,35488,35489,35490,47972,35492,35493,35494,47970"];

    }
    [self performSegueWithIdentifier:@"visuedt" sender:self];
}



- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
    
//    UIView * previousView = [(UIViewController<SlidableView> *)[self presentingViewController] viewAnimates];
//    [[self view] insertSubview: previousView belowSubview: viewAnimates ];
//    [UIView animateWithDuration:0.4
//                          delay:0.0
//                        options:UIViewAnimationOptionTransitionFlipFromTop
//                     animations:^{
//                         [viewAnimates setTransform:CGAffineTransformMakeTranslation(0, viewAnimates.frame.size.height)];
//                         
//                     }
//                     completion:^(BOOL finished){
//                         [[(UIViewController<SlidableView> *)[self presentingViewController] view] insertSubview: previousView belowSubview: [(UIViewController<SlidableView>*)[self presentingViewController] topImage] ];
//                         [self dismissViewControllerAnimated:NO completion:nil];
//                         
//                     }];
//    
}
//
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"visuedt"]) {
        EdtViewController *destViewController = segue.destinationViewController;
        destViewController.edtID = myEDTCode;

        [destViewController loadView];
        
        
    }
    
}

- (BOOL )shouldAutorotate{
    return NO;
    
}



@end
