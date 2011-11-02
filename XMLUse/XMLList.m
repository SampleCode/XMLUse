//
//  XMLList.m
//  XMLUse
//
//  Created by yimyo on 2011/10/10.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "XMLList.h"


@implementation XMLList


@synthesize treeID;
@synthesize treeKind;
@synthesize treeAddress;

-(void)dealloc{
    [super dealloc];
    [treeID release];
    [treeKind release];
    [treeAddress release];
}
@end
