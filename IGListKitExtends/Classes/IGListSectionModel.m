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
@synthesize cellIdentifier = _cellIdentifier;
@synthesize nibName = _nibName;
@synthesize bundle = _bundle;

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
	NSString *nibName = [self loadNibNameWith:index];
	NSBundle *bundle = [self loadBundleWith:index];
    
    UICollectionViewCell *cell = nil;
    if (nibName)
    {
        cell = [self.collectionContext dequeueReusableCellWithNibName:nibName
															   bundle:bundle
												 forSectionController:self
															  atIndex:index];
    }
    else
    {
		cell = [self.collectionContext dequeueReusableCellOfClass:cellClass
											  withReuseIdentifier:identifier
											 forSectionController:self
														  atIndex:index];
    }
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
    Class value = nil;
    NSObject<IGEListItemModelRepresentable> *item = self.items[index];
    if ([item conformsToProtocol:@protocol(IGEListItemModelRepresentable)])
    {
        value = item.cellClass;
    }
    if (!value)
    {
        value = self.cellClass;
    }
    if (!value)
    {
        value = [UICollectionViewCell class];
    }
    return value;
}

- (NSString *)loadIdentifierWith:(NSInteger)index
{
    NSString *value = nil;
    NSObject<IGEListItemModelRepresentable> *item = self.items[index];
    if ([item conformsToProtocol:@protocol(IGEListItemModelRepresentable)])
    {
        value = item.cellIdentifier;
    }
    if (!value)
    {
        value = self.cellIdentifier;
    }
    return value;
}

- (NSString *)loadNibNameWith:(NSInteger)index
{
	NSString *value = nil;
	NSObject<IGEListItemModelRepresentable> *item = self.items[index];
	if ([item conformsToProtocol:@protocol(IGEListItemModelRepresentable)])
	{
		value = item.nibName;
	}
	if (!value)
	{
		value = self.nibName;
	}
	return value;
}

- (NSBundle *)loadBundleWith:(NSInteger)index
{
	NSBundle *value = nil;
	NSObject<IGEListItemModelRepresentable> *item = self.items[index];
	if ([item conformsToProtocol:@protocol(IGEListItemModelRepresentable)])
	{
		value = item.bundle;
	}
	if (!value)
	{
		value = self.bundle;
	}
	return value;
}

@end
