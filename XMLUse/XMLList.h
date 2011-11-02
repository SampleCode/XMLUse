//
//  XMLList.h
//  XMLUse
//
//  Created by yimyo on 2011/10/10.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface XMLList : NSObject {
	// <title>
	NSString *treeID;
	// <description>
	NSString *treeKind;
	// <link>
	NSString *treeAddress;
}


@property(nonatomic,retain)NSString *treeID;
@property(nonatomic,retain)NSString *treeKind;
@property(nonatomic,retain)NSString *treeAddress;

@end
