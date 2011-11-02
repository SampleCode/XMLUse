//
//  CoreDataBaseUse.h
//  XMLUse
//
//  Created by App on 2011/10/13.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "XMLParser.h"
#import "XMLList.h"


@interface CoreDataBaseUse : NSObject

+ (id) sharedDataStore ;
- (NSManagedObjectContext *) disposableMOC;
-(void) setXMLData;
@end
