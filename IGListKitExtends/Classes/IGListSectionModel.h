//
//  IGListSectionModel.h
//  IGListKitExtends
//
//  Created by dailingchi on 2018/7/18.
//

#import <Foundation/Foundation.h>
#import <IGListKit/IGListKit.h>
#import "IGListItemModelRepresentable.h"

@interface IGListSectionModel : NSObject<IGListDiffable>

/**
 any or IGListItemModelRepresentable
 */
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) CGSize (^sizeForItemAtIndex)(NSInteger index);
@property (nonatomic, copy) void (^cellAtIndex)(UICollectionViewCell *cell, NSInteger index);
@property (nonatomic, assign) Class cellClass;
@property (nonatomic, assign) Class sectionControllerClass;

@end

/**
 控制一些列Cell布局、事件、渲染
 - Size加载逻辑
 - Cell加载逻辑
 */
@interface IGEListSectionController1: IGListSectionController <IGListDiffable, IGEListItemModelRepresentable>

/**
 any or IGListItemModelRepresentable
 */
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) CGSize (^sizeForItemAtIndex)(NSInteger index);
@property (nonatomic, copy) void (^cellAtIndex)(UICollectionViewCell *cell, NSInteger index);

@end
