//
//  TableViewController.m
//  MyAnalytics
//
//  Created by Marco Antonio Roa De La Cruz on 10/30/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import "TableViewController.h"
#import "DetailViewController.h"

@import Firebase;

@interface TableViewController ()

@end

@implementation TableViewController
NSMutableArray *itemData;
NSMutableArray *itemImage;
NSIndexPath *iP;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    itemData  = [[NSMutableArray alloc] initWithObjects: @"calzones", @"Pantalon", @"Zapatos",  nil];
    
    
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


/*
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64;
}

//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------
 
 */
 
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    static NSString *CellIdentifier = @"myCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    //Fill cell with info from arrays
    
    cell.textLabel.text = itemData[indexPath.row];

    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemData.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64;
}
 
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    iP = indexPath;
    
    [FIRAnalytics logEventWithName:@"ItemSelected"
                        parameters:@{
                                     @"name": @"TVC", @"full_text": itemData[iP.row]
                                     }];

    
    [self performSegueWithIdentifier:@"toDetails" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([[segue identifier] isEqualToString:@"toDetails"])
    {
        //if you need to pass data to the next controller do it here
        
        DetailViewController *vc = [segue destinationViewController];
      
        vc.iP = iP;
    }
}

@end
