//
//  ViewController.m
//  AppliIUTSDdeLorraine
//
//  Created by Damien Bannerot on 14/12/12.
//  Copyright (c) 2012 Damien Bannerot. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ViewController ()

@end

@implementation ViewController

@synthesize bconnection;

@synthesize log;
@synthesize mdp;
@synthesize toto;
@synthesize toto2;
@synthesize response;
@synthesize abo1;
@synthesize abo2;
@synthesize abo3;
@synthesize prefsend;

//Envoi de la requete après clic sur le bouton pour log de l'utilisateur
- (IBAction) bconnection: (UIButton *) sender{
    
    
    // NSString *vallog = log.text;
    //NSString *valmdp = [mdp text];
    
    NSString *url = [NSString stringWithFormat:@"http://iutsd.applorraine.fr/testconnexion.php?log=%@&mdp=%@", log.text, mdp.text];
    
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:1.0];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    if(connection){
        NSLog(@"connected");
        toto.text = @"Connexion en cours";
    }else{
        NSLog(@"not connected");
        toto.text = @"Connexion nul";
    }
}

//Envoi de la requete après clic sur le bouton envoi des preferences abonnements
- (IBAction) prefsend: (UIButton *) sender{
    NSString *uuid = @"0000";
    NSString *prefabo;
    
    if(([abo1 isOn] == NO)&&([abo2 isOn] == NO)&&([abo3 isOn] == NO)){
        NSLog(@"pas d'abo selectionné");
        toto2.text = @"Erreur, pas d'abonnement sélectionné.";
    }else if((([abo1 isOn] == YES)&&([abo2 isOn] == YES))||(([abo2 isOn] == YES)&&([abo3 isOn] == YES))||(([abo1 isOn] == YES)&&([abo3 isOn] == YES))){
        NSLog(@"un abonnement max");
        toto2.text = @"Erreur, un abonnement maximum";
    }else{
        NSLog(@"OK");
        toto2.text = @"";
    }
    if(([abo1 isOn] == YES)){
        prefabo=@"1";
    }else if(([abo2 isOn] == YES)){
        prefabo=@"2";
    }else if(([abo3 isOn] == YES)){
        prefabo=@"3";
    }
    
    NSString *url = [NSString stringWithFormat:@"http://iutsd.applorraine.fr/abonnementpref.php?UUId=%@&pref=%@", uuid, prefabo ];
    
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:1.0];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    if(connection){
        NSLog(@"connected");
        //toto.text = @"Connexion en cours";
    }else{
        NSLog(@"not connected");
        //toto.text = @"Connexion nul";
    }
}




- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {

    response = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
   


}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    
    
    
    //if([response isEqualToString:@"1"]){
       // NSLog(log.text);
       // toto.text = response;
    if([log.text isEqualToString:@"iut"]){
        if([mdp.text isEqualToString:@"stdie"]){
            [self performSegueWithIdentifier:@"etudiant" sender:self];
        }
    }
    else if([log.text isEqualToString:@"prof"]){
        if([mdp.text isEqualToString:@"prof"]){
            [self performSegueWithIdentifier:@"professeur" sender:self];
        }
    }
    else{
        toto.text=@"Login faux, veuillez recommencer.";
    }
    //}
    //else{
   //     NSLog(@"Loose");
   //     toto.text = @"Mauvais Login";
   // }
    
    connection = nil;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
