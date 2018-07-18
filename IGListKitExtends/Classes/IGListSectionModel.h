//
//  IGListSectionModel.h
//  IGListKitExtends
//
//  Created by dailingchi on 2018/7/18.
//

#import <Foundation/Foundation.h>
#import "IGListItemModelRepresentable.h"

@interface IGListSectionModel : NSObject

@property (nonatomic, strong) NSArray<IGListItemModelRepresentable> *items;
@property (nonatomic, copy) CGSize (^sizeForItemAtIndex)(NSInteger index);

@end
