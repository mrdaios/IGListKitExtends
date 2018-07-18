//
//  IGListKitExtends.h
//  Pods
//
//  Created by dailingchi on 2018/7/18.
//

#import <IGListKit/IGListKit.h>
#import <IGListKitExtends/IGListSectionModel.h>

@interface IGListKitExtends: NSObject <IGListDiffable, IGListAdapterDataSource>

@property (nonatomic, strong) NSMutableArray<IGListSectionModel *> *sections;

@end
