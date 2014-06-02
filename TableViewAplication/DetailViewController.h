//
//  DetailViewController.h
//  TableViewAplication
//
//  Created by Héctor Omar Silva Díaz on 5/23/14.
//  Copyright (c) 2014 Hache Silva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UITableViewDataSource,UITableViewDelegate> {
    
    IBOutlet UILabel *descripcion;
    IBOutlet UIImageView *imagenPrueba;
    
   
    
   
    
    
    NSArray *myArray;
    NSArray *imagenPrueba2;
}

@property (strong, nonatomic) IBOutlet UILabel *tituloLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imagenView;

@property (strong,nonatomic) NSArray *detailModal;


@property (strong, nonatomic) IBOutlet UITableView *vistaTabla;
@property (strong, nonatomic) NSArray*myArray;
@end
