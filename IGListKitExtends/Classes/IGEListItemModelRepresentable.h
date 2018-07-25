//
//  IGListItemModelRepresentable.h
//  IGListKitExtends
//
//  Created by dailingchi on 2018/7/18.
//

#import <Foundation/Foundation.h>

/**
 Cell配置信息
 */
@protocol IGEListItemModelRepresentable <NSObject>

@optional
//load from class config
@property (nonatomic, assign, readwrite) Class cellClass;
@property (nonatomic, copy, readwrite) NSString *cellIdentifier;
//load from xib config
@property (nonatomic, copy, readwrite) NSString *nibName;
@property (nonatomic, copy, readwrite) NSBundle *bundle;

@end
