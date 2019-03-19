//
//  ViewController.m
//  Assignment_3
//
//  Created by Asha  on 3/19/19.
//  Copyright © 2019 Asha . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property NSArray * images;
@property NSArray * labels;
@end

@implementation ViewController
@synthesize collection_view;
- (void)viewDidLoad {
    [super viewDidLoad];
    _images=[[NSArray alloc]initWithObjects:@"Backwaters.jpg",@"Jaisalmer.jpg",@"Old Goa.jpg", nil];
    _labels=[[NSArray alloc]initWithObjects:@"Backwaters",@"Jaisalmer Fort",@"Old Goa", nil];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _images.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    UIImageView * img=(UIImageView *)[cell viewWithTag:1];
    UILabel *lbl=(UILabel *)[cell viewWithTag:2];
    
    img.image=[UIImage imageNamed:[_images objectAtIndex:indexPath.row]];
    lbl.text=[_labels objectAtIndex:indexPath.row];
    
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
@end
