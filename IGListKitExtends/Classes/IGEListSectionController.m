//
//  IGEListSectionController.m
//  IGListKit
//
//  Created by dailingchi on 2018/7/18.
//

#import "IGEListSectionController.h"
#import "IGListSectionModel.h"

@interface IGEListSectionController()

@property (nonatomic, strong) IGListSectionModel *sectionModel;

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
	return nil;
}

- (void)didUpdateToObject:(id)object
{
	self.sectionModel = object;
}

@end
