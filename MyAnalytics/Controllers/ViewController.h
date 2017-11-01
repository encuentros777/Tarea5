//
//  ViewController.h
//  MyAnalytics
//
//  Created by Marco Antonio Roa De La Cruz on 10/25/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;
@import GoogleSignIn;

//@interface ViewController : UIViewController
@interface ViewController : UIViewController<GIDSignInUIDelegate>

@property(weak, nonatomic) IBOutlet GIDSignInButton *signInButton;
@property (weak, nonatomic) IBOutlet UILabel *statusMessageLabel;
@property (weak, nonatomic) IBOutlet UIButton *continueButton;
- (IBAction)continueButtonPressed:(id)sender;

@end

