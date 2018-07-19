//
//  NSDictionary+IGEExtends.h
//  IGListKit
//
//  Created by dailingchi on 2018/7/19.
//

#import <Foundation/Foundation.h>
#import "IGListItemModelRepresentable.h"

//NSString *kIGListKitCellClass = @"kIGListKitCellClass";

@interface NSMutableDictionary (IGEExtends) <IGEListItemModelRepresentable>

@end


//@protocol IGEListItemModelRepresentable <NSObject>
//
////load from class config
//@property (nonatomic, assign, readwrite) Class cellClass;
//@property (nonatomic, copy, readwrite) NSString *cellIdentifier;
//
////load from xib config
//@property (nonatomic, copy, readwrite) NSString *nibName;
//@property (nonatomic, copy, readwrite) NSBundle *bundle;
//
//@end
