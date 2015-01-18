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
        [myEDTCode setString:@"25733,25763,50788,50789,50790,50791,25701,25702,50484,50485,50549,50550,25704,25705,50496,50497,50561,50562,25707,25708,25709,50500,50501,50565,50566,25711,25712,25713,50492,50493,50557,50558,25715,25716,25717,50488,50489,50553,50554,25719,25720,50486,50487,50551,50552,25722,25723,25724,50494,50495,50559,50560,25726,25727,25728,50498,50499,50563,50564,25730,25731,25732,50490,50491,50555,50556,25736,25737,25738,50506,50507,50571,50572,25740,25741,25742,50502,50503,50567,50568,25744,25745,25746,50504,50505,50569,50570,25748,25749,25750,50514,50515,50579,50580,25752,25753,25754,50508,50509,50573,50574,25756,25757,25758,50510,50511,50575,50576,25760,25761,25762,50512,50513,50577,50578"];
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
        [myEDTCode setString:@"48307,48488,48489,48490,48491,48360,48493,48494,48495,48496,48289,48290,48291,48391,48392,48441,48442,48293,48294,48295,48393,48394,48443,48444,48297,48298,48299,48395,48396,48445,48446,48301,48302,48303,48389,48390,48439,48440,48305,48306,48387,48388,48437,48438,48310,48311,48312,48407,48408,48457,48458,48314,48315,48316,48397,48398,48447,48448,48318,48319,48320,48401,48402,48451,48452,48322,48323,48324,48403,48404,48453,48454,48326,48327,48405,48406,48455,48456,48329,48330,48399,48400,48449,48450,48332,48333,48409,48410,48459,48460,48337,48338,48339,48413,48414,48463,48464,48341,48342,48343,48411,48412,48461,48462,48345,48346,48347,48417,48418,48467,48468,48349,48350,48351,48415,48416,48465,48466,48353,48354,48355,48419,48420,48469,48470,48357,48358,48359,48421,48422,48471,48472,48363,48364,48365,48433,48434,48483,48484,48367,48368,48369,48423,48424,48473,48474,48371,48372,48373,48429,48430,48479,48480,48375,48376,48377,48431,48432,48481,48482,48379,48380,48425,48426,48475,48476,48382,48383,48427,48428,48477,48478,48385,48386,48435,48436,48485,48486"];
        [self performSegueWithIdentifier:@"visuedt" sender:self];
    }    else if(codeEDT==6){
        [myEDTName setString:  @"Info 2"];
        [myEDTCode setString:@"60448,60449,60450,60451"];
    } else if(codeEDT==7){
        [myEDTName setString:  @"LP IMM"];
        [myEDTCode setString:@"59050,59051,59052,59054,59055,59056,59058,59059,59062,59063,59064,59066,59067,59068,59070,59487,59488,59490,59491,59492,59494,59495,59496,59498,59499,59500,59503,59504,59505,59507,59508,59509,59511,59512,59513,59515,59516,59517,59519,59520,59521,59523,59524,59525"];
    }else if(codeEDT==8){
        [myEDTName setString:  @"LP ISN"];
        [myEDTCode setString:@"47338,47339"];
    }
    // GEII 1 2  LPs
    else if(codeEDT==9){
        [myEDTName setString:  @"LP GEII 1"];
        [myEDTCode setString:@"51584,51585,51586,51638"];
    }
    else if(codeEDT==10){
        [myEDTName setString:  @"GEII 2"];
        [myEDTCode setString:@"59678,59679,59680,59681"];
    }else if(codeEDT==11){
        [myEDTName setString:  @"LP A2I"];
        [myEDTCode setString:@"47958,47959"];

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
