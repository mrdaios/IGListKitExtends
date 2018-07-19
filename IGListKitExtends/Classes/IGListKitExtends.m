//
//  IGListKitExtends.m
//  IGListKit
//
//  Created by dailingchi on 2018/7/18.
//

#import <objc/runtime.h>
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
	return object;
}

- (nullable UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter
{
	return nil;
}

@end

@implementation IGListAdapter (IGListKitExtends)

@dynamic gl_extends;

-(IGListKitExtends *)gl_extends
{
	IGListKitExtends *extends = objc_getAssociatedObject(self, _cmd);
	if (!extends)
	{
		extends = [IGListKitExtends new];
		[self setGl_extends:extends];
	}
	self.dataSource = extends;
	return extends;
}

-(void)setGl_extends:(IGListKitExtends *)gl_extends
{
	objc_setAssociatedObject(self, _cmd, gl_extends, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
