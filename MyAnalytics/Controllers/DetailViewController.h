//
//  DetailViewController.h
//  MyAnalytics
//
//  Created by Marco Antonio Roa De La Cruz on 10/30/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) NSIndexPath *iP;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITextView *textArea;

@end
