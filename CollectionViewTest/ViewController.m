//
//  ViewController.m
//  CollectionViewTest
//
//  Created by froda on 15/4/29.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize collection;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.collection.delegate = self;
    self.collection.dataSource = self;
    [self.collection reloadData];
    
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 5;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 3;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    //cell.image = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"image.png"]];
    //CollectionViewCell *cell = [[CollectionViewCell alloc]init];
    return cell;
}
@end
