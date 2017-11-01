//
//  DetailViewController.m
//  MyAnalytics
//
//  Created by Marco Antonio Roa De La Cruz on 10/30/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import "DetailViewController.h"
@import Firebase;

@interface DetailViewController ()

@end

@implementation DetailViewController

NSString *text;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableArray *itemImage = [[NSMutableArray alloc] initWithObjects: @"calzonez.jpg", @"pantalon.jpg", @"zapato.jpg",nil];
    NSMutableArray *itemDescription = [[NSMutableArray alloc] initWithObjects:
                                       @"Prenda de vestir con dos perneras , que cubre el cuerpo desde la cintura hasta una altura variable de los muslos",
                                        @"Prenda de vestir que se ajusta a la cintura y llega a una altura variable de la pierna o hasta los tobillos, cubriendo cada pierna por separado.",
                                       @"Calzado que cubre total o parcialmente el pie sin sobrepasar el tobillo, con una suela de un material casi siempre más duro que el resto. "
                                       nil];
    
    self.imageView.image = [UIImage imageNamed:itemImage[self.iP.row]];
    self.textArea.text = itemDescription[self.iP.row];
    text = itemImage[self.iP.row];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender
{
    [FIRAnalytics logEventWithName:@"ItemBought"
                        parameters:@{
                                     @"name": @"DVC",
                                     @"full_text": @"Item bought"
                                     }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
