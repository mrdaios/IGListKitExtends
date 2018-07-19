//
//  NSDictionary+IGEExtends.m
//  IGListKit
//
//  Created by dailingchi on 2018/7/19.
//

#import "NSDictionary+IGEExtends.h"

@implementation NSMutableDictionary (IGEExtends)

@dynamic cellClass;
@dynamic cellIdentifier;
@dynamic nibName;
@dynamic bundle;

-(void)setCellClass:(Class)cellClass
{
	[self setObject:cellClass forKey:@"test"];
}

@end
