//
//  IGListSectionModel.m
//  IGListKitExtends
//
//  Created by dailingchi on 2018/7/18.
//

#import "IGListSectionModel.h"

@implementation IGListSectionModel

#pragma mark IGListDiffable

- (nonnull id<NSObject>)diffIdentifier
{
    return self;
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object
{
    return [[object diffIdentifier] isEqual:[self diffIdentifier]];
}

@end


@implementation IGEListSectionController1

@synthesize cellClass = _cellClass;
@synthesize nib = _nib;
@synthesize cellIdentifier = _cellIdentifier;

- (NSInteger)numberOfItems
{
    return self.items.count;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
    return self.sizeForItemAtIndex(index);
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
    Class cellClass = [self loadClassWith:index];
    NSString *identifier = [self loadIdentifierWith:index];
    UINib *nib = nil;
    
    UICollectionViewCell *cell = nil;
    if (nib)
    {
        cell = [self.collectionContext dequeueReusableCellWithNibName:@"" bundle:nil forSectionController:self atIndex:index];
    }
    else
    {
        
    }
    
    
    //TODO:xib or class
//    UICollectionViewCell *cell = [self.collectionContext dequeueReusableCellWithNibName:@"IGCollectionViewCell" bundle:nil forSectionController:self atIndex:index];
    self.cellAtIndex(cell, index);
    return cell;
}

#pragma mark IGListDiffable

- (nonnull id<NSObject>)diffIdentifier
{
    return self;
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object
{
    return [[object diffIdentifier] isEqual:[self diffIdentifier]];
}

#pragma mark Utils

- (Class)loadClassWith:(NSInteger)index
{
    Class cellClass = nil;
    NSObject<IGEListItemModelRepresentable> *item = self.items[index];
    if ([item conformsToProtocol:@protocol(IGEListItemModelRepresentable)])
    {
        cellClass = item.cellClass;
    }
    if (!cellClass)
    {
        cellClass = self.cellClass;
    }
    if (!cellClass)
    {
        cellClass = [UICollectionViewCell class];
    }
    return cellClass;
}

- (NSString *)loadIdentifierWith:(NSInteger)index
{
    NSString *identifier = nil;
    NSObject<IGEListItemModelRepresentable> *item = self.items[index];
    if ([item conformsToProtocol:@protocol(IGEListItemModelRepresentable)])
    {
        identifier = item.cellIdentifier;
    }
    if (!identifier)
    {
        identifier = self.cellIdentifier;
    }
    return identifier;
}

@end
