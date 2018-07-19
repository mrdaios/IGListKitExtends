//
//  IGViewController.m
//  IGListKitExtends
//
//  Created by mrdaios on 07/18/2018.
//  Copyright (c) 2018 mrdaios. All rights reserved.
//

#import <IGListKitExtends/IGListKitExtends.h>
#import "IGViewController.h"

@interface IGViewController ()<IGListAdapterDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) IGListAdapter *adpater;
@property (nonatomic, strong) IGListKitExtends *adapaterExtends;

@end

@implementation IGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //init for view
    [self.view addSubview:self.collectionView];
    
	self.adpater = [[IGListAdapter alloc]initWithUpdater:[IGListAdapterUpdater new] viewController:self];
    self.adapaterExtends = [IGListKitExtends new];
    
	IGListSectionModel *section = [IGListSectionModel new];
    section.cellClass = NSClassFromString(@"IGCollectionViewCell");
	section.sizeForItemAtIndex = ^CGSize(NSInteger index) {
		return CGSizeMake(51, 55);
	};
    section.cellAtIndex = ^(UICollectionViewCell *cell, NSInteger index) {
        cell.backgroundColor = [UIColor redColor];
    };
    section.items = @[@"1",@"2"];
    self.adapaterExtends.sections = @[section];
	
    self.adpater.collectionView = self.collectionView;
//    self.adpater.dataSource = self.adapaterExtends;
    self.adpater.dataSource = self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSArray<id <IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter
{
    IGEListSectionController1 *controller = [IGEListSectionController1 new];
    controller.items = @[@"1",@"2",@"3"];
//    controller.minimumLineSpacing = 1;
//    controller.inset = UIEdgeInsetsMake(10, 10, 0, 10);
    controller.sizeForItemAtIndex = ^CGSize(NSInteger index) {
        
        return CGSizeMake((controller.collectionContext.containerSize.width - controller.inset.left - controller.inset.right), 55);
    };
    controller.cellAtIndex = ^(UICollectionViewCell *cell, NSInteger index) {
        cell.backgroundColor = [UIColor redColor];
    };
    return @[controller];
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object
{
    return object;
}

- (nullable UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter
{
    return nil;
}


#pragma mark
#pragma mark getter

-(UICollectionView *)collectionView
{
    if (nil == _collectionView)
    {
        UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
        _collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
        _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.alwaysBounceVertical = YES;
    }
    return _collectionView;
}

@end
