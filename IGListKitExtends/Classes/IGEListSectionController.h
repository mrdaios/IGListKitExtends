//
//  IGEListSectionController.h
//  IGListKit
//
//  Created by dailingchi on 2018/7/25.
//

#import <IGListKit/IGListKit.h>
#import "IGEListItemModelRepresentable.h"

NS_ASSUME_NONNULL_BEGIN

/**
 控制一些列Cell布局、事件、渲染
 - Size加载逻辑
 - Cell加载逻辑
 */
@interface IGEListSectionController: IGListSectionController <IGListDiffable, IGEListItemModelRepresentable>

/**
 any or IGListItemModelRepresentable
 */
@property (nonatomic, strong, nullable) NSMutableArray *items;

/**
 cell的size
 */
@property (nonatomic, copy, nullable) CGSize (^sizeForItemAtIndex)(NSInteger index);

/**
 cell布局
 */
@property (nonatomic, copy, nullable) void (^cellAtIndex)(__kindof UICollectionViewCell *cell, NSInteger index);

@end

NS_ASSUME_NONNULL_END
