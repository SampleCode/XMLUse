//
//  XMLParser.m
//  XMLUse
//
//  Created by yimyo on 2011/10/10.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "XMLParser.h"


@implementation XMLParser

-(id)initWrithData:(NSData*) data{
   
    self = [self init];
    NSXMLParser *parser = [[[NSXMLParser alloc]initWithData:data]autorelease];
    treeItems = [[NSMutableArray alloc]init];
    parser.delegate = self;
    [parser parse];
    idFound = NO;
    kindFound = NO;
    addressFound = NO;
    
    return self;
}

-(void) parser:(NSXMLParser *) parser didStartElement:(NSString *) elementName namespaceURI:(NSString *) namespaceURI qualifiedName:(NSString  *) qName attributes:(NSDictionary *) attributeDict{
    
    
    if(itemFound){
        if([elementName isEqualToString:@"TREE_ID"]){
            idFound = YES;
        }else if([elementName isEqualToString:@"TREE_xAddress"]){
            addressFound = YES;
        }else if([elementName isEqualToString:@"TREE_KIND"]){
            kindFound = YES;
        }
    }
    if([elementName isEqualToString:@"TreeIndex"]){
        itemFound = YES;
    }
}

-(void) parser:(NSXMLParser *) parser didEndElement:(NSString *) elementName namespaceURI:(NSString *) namespaceURI qualifiedName:(NSString  *) qName{
    
    if([elementName isEqualToString:@"TreeIndex"]){
        itemFound = NO;
    }
    if(itemFound){
        if([elementName isEqualToString:@"TREE_ID"]){
            idFound = NO;
        }else if([elementName isEqualToString:@"TREE_xAddress"]){
            addressFound = NO;
        }else if([elementName isEqualToString:@"TREE_KIND"]){
            kindFound = NO;
        }
    }
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    if(itemFound){
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        if([string length]==0){
            return;
        }
        if(idFound){
            treeID = string;
        }
        if(kindFound){
            treeKind = string;
        }
        if(addressFound){
            
            XMLList *list = [[XMLList alloc]init];
            list.treeID = treeID;
            list.treeKind = treeKind;
            list.treeAddress = string;
            [treeItems addObject:list];
            [list release];
        }
        
    }
}

-(NSMutableArray *)result{
    return treeItems;
}

-(void) dealloc{
    [super dealloc];
    [treeItems release];
}
@end
