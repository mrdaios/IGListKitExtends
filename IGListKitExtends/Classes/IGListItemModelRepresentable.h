//
//  IGListItemModelRepresentable.h
//  IGListKitExtends
//
//  Created by dailingchi on 2018/7/18.
//

#import <Foundation/Foundation.h>

@protocol IGEListItemModelRepresentable <NSObject>

@property (nonatomic, assign, readwrite) Class cellClass;
@property (nonatomic, copy, readwrite) NSString *cellIdentifier;
@property (nonatomic, assign, readwrite) UINib *nib;

@end
