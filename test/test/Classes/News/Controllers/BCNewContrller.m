//
//  BCNewContrller.m
//  test
//
//  Created by zgy_smile on 16/5/7.
//  Copyright © 2016年 zgy_smile. All rights reserved.
//

#import "BCNewContrller.h"

@interface BCNewContrller ()
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;

@end

@implementation BCNewContrller

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    [self setupCollctionView];
    
}

- (void)setupCollctionView {
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    self.layout.itemSize = self.collectionView.bounds.size;
    
    self.layout.minimumLineSpacing = 0;
    
    self.layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    self.collectionView.pagingEnabled = YES;
    
    self.collectionView.bounces = NO;
    
    self.collectionView.showsHorizontalScrollIndicator = NO;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.backgroundColor = [self randomColor];
    
    return cell;
}

- (UIColor *)randomColor {
    
    return [UIColor colorWithRed:arc4random_uniform(256)/255.f green:arc4random_uniform(256)/255.f blue:arc4random_uniform(256)/255.f alpha:1];
}





@end
