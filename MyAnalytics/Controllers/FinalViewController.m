//
//  FinalViewController.m
//  MyAnalytics
//
//  Created by Marco Antonio Roa De La Cruz on 10/30/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import "FinalViewController.h"
#import "ViewController.h"

@interface FinalViewController ()

@end

@implementation FinalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"toTable"])
    {
        //if you need to pass data to the next controller do it here
        
        ViewController *vc = [segue destinationViewController];
        
        vc.navigationItem.hidesBackButton = true;
        
    }
    
}


@end
