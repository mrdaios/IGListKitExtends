//
//  IGListKitExtends.h
//  Pods
//
//  Created by dailingchi on 2018/7/18.
//

#import <IGListKit/IGListKit.h>
#import "IGListSectionModel.h"
#import "IGEListItemModel.h"

@interface IGListKitExtends: NSObject <IGListAdapterDataSource>

@property (nonatomic, strong) NSArray<IGListSectionModel *> *sections;

@end
