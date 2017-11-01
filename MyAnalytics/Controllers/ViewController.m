//
//  ViewController.m
//  MyAnalytics
//
//  Created by Marco Antonio Roa De La Cruz on 10/25/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import "ViewController.h"
@import Firebase;
@import GoogleSignIn;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [GIDSignIn sharedInstance].uiDelegate = self;
    [[GIDSignIn sharedInstance] signOut];
    [[GIDSignIn sharedInstance] signIn];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //[self performSegueWithIdentifier:@"toTables" sender:self];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)eventButtonPressed:(id)sender
{
    [FIRAnalytics logEventWithName:@"EventButtonPressed"
                        parameters:@{
                                     @"name": @"TestEvent",
                                     @"full_text": @"TestText"
                                     }];

}



- (IBAction)continueButtonPressed:(id)sender
{
    [self performSegueWithIdentifier:@"toTables" sender:self];
}
@end
