//
//  Detalle2.m
//  TableViewAplication
//
//  Created by Héctor Omar Silva Díaz on 5/29/14.
//  Copyright (c) 2014 Hache Silva. All rights reserved.
//

#import "Detalle2.h"

@interface Detalle2 ()

@end

@implementation Detalle2

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
    // Do any additional setup after loading the view.
        
    
   _tituloLabel2.text = _detailModal2[1];
    _imagen.image = [UIImage imageNamed:_detailModal2[0]];
    
    self.navigationItem.title = _detailModal2[0];
    
    
    if ([_tituloLabel2.text isEqualToString:@"omar"]) {
        
        
        
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

@end
