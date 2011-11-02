//
//  XMLParser.h
//  XMLUse
//
//  Created by yimyo on 2011/10/10.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMLList.h"

@interface XMLParser : NSObject <NSXMLParserDelegate>{ 
    BOOL idFound;
    BOOL kindFound;
    BOOL addressFound;
    BOOL itemFound;
    NSString *treeID;
    NSString *treeKind;
    NSString *treeAddress;
    NSMutableArray *treeItems;
}
-(id)initWrithData:(NSData*) data;
-(NSMutableArray *)result;
@end
