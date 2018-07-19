//
//  IGEListSectionController.m
//  IGListKit
//
//  Created by dailingchi on 2018/7/18.
//

#import "IGEListSectionController.h"
#import "IGListSectionModel.h"

@interface IGEListSectionController()

@property (nonatomic, weak) IGListSectionModel *sectionModel;

@end

@implementation IGEListSectionController

- (NSInteger)numberOfItems
{
	return self.sectionModel.items.count;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
	return self.sectionModel.sizeForItemAtIndex(index);
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
    //TODO:xib or class
    UICollectionViewCell *cell = [self.collectionContext dequeueReusableCellWithNibName:@"IGCollectionViewCell" bundle:nil forSectionController:self atIndex:index];
    self.sectionModel.cellAtIndex(cell, index);
	return cell;
}

- (void)didUpdateToObject:(id)object
{
	self.sectionModel = object;
    self.minimumLineSpacing = 1;
//    self.minimumInteritemSpacing = 10;
    self.inset = UIEdgeInsetsMake(10, 10, 10, 10);
}

-(void)dealloc
{
    
}

@end
