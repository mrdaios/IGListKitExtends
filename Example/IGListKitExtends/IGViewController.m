//
//  IGViewController.m
//  IGListKitExtends
//
//  Created by mrdaios on 07/18/2018.
//  Copyright (c) 2018 mrdaios. All rights reserved.
//

#import <IGListKitExtends/IGListKitExtends.h>
#import "IGViewController.h"

@interface IGViewController ()

@end

@implementation IGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	IGListAdapter *adpater = [[IGListAdapter alloc]initWithUpdater:[IGListAdapterUpdater new] viewController:self];
	IGListSectionModel *section = [IGListSectionModel new];
	section.sizeForItemAtIndex = ^CGSize(NSInteger index) {
		return CGSizeMake(0, 0);
	};
	
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
