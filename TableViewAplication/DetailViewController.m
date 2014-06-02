//
//  DetailViewController.m
//  TableViewAplication
//
//  Created by Héctor Omar Silva Díaz on 5/23/14.
//  Copyright (c) 2014 Hache Silva. All rights reserved.
//

#import "DetailViewController.h"
#import "TableCell2.h"
#import "Detalle2.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    myArray = @[@"omar",@"hector",@"clara",@"jose"];
    imagenPrueba2 = @[@"leslie2.jpg",@"vanessa1.jpg",@"vanessa3.jpg",@"vanessa4.jpg"];
    // Do any additional setup after loading the view.
    
    _tituloLabel.text = _detailModal[0];
    _imagenView.image = [UIImage imageNamed:_detailModal[1]];
    
    self.navigationItem.title = _detailModal[0];
    
    
    if ([_tituloLabel.text isEqualToString:@"ejemplo1"]) {
        
        descripcion.text = @"ejemplo 1";
        imagenPrueba.image = [UIImage imageNamed:@"tazmania.jpg"];
        
       
        
       
    }
    
    if ([_tituloLabel.text isEqualToString:@"ejemplo2"]) {
        
       descripcion.text = @"ejemplo 2";
       imagenPrueba.image = [UIImage imageNamed:@"insecto1.jpg"];
     
        
        
    }
    
    if ([_tituloLabel.text isEqualToString:@"ejemplo3"]) {
        
      
        
    }
    
    if ([_tituloLabel.text isEqualToString:@"ejemplo4"]) {
        
        
        
    }


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return imagenPrueba2.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"TableCell2";
    
    TableCell2 *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    int row = [indexPath row];
    
    cell.tituloLabel2.text = myArray [row];
    cell.thumbImagen2.image = [UIImage imageNamed:imagenPrueba2 [row]];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showDetails2"]) {
        Detalle2 *detailviewcontroller = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.vistaTabla indexPathForSelectedRow];
        
        int row = [myIndexPath row];
        detailviewcontroller.detailModal2 = @[imagenPrueba2[row],myArray[row]];
        
    }
}


@end
















