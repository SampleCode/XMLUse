//
//  MyTableViewUse.h
//  XMLUse
//
//  Created by yimyo on 2011/10/11.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "myIndexViewController.h"
#import "XMLParser.h"
#import "XMLList.h"
#import "CoreDataBaseUse.h"


@interface MyTableViewUse : UITableViewController<UITableViewDelegate,NSFetchedResultsControllerDelegate> {
    NSMutableArray *treeIndex;
    XMLParser *parser;
}

@property(nonatomic,retain) NSArray *dataArray;
@property (nonatomic, readwrite, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, readwrite, retain) NSFetchedResultsController *fetchedResultsController;

@end
