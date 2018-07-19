//
//  IGListKitExtends.h
//  Pods
//
//  Created by dailingchi on 2018/7/18.
//

#import <IGListKit/IGListKit.h>
#import "IGListSectionModel.h"
#import "IGEListItemModel.h"
#import "NSDictionary+IGEExtends.h"

@interface IGListKitExtends: NSObject <IGListAdapterDataSource>

@property (nonatomic, strong) NSArray<IGListSectionModel *> *sections;

@end

@interface IGListAdapter (IGListKitExtends)

@property (nonatomic, strong, readonly) IGListKitExtends *gl_extends;

@end
