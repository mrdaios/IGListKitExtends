//
//  IGListKitExtends.m
//  IGListKit
//
//  Created by dailingchi on 2018/7/18.
//

#import "IGListKitExtends.h"
#import "IGEListSectionController.h"

@implementation IGListKitExtends

#pragma mark IGListAdapterDataSource

- (NSArray<id <IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter
{
	return self.sections;
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object
{
	return [IGEListSectionController new];

}

- (nullable UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter
{
	return nil;
}

@end
