//
//  myIndexViewController.h
//  XMLUse
//
//  Created by yimyo on 2011/10/11.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface myIndexViewController : UIViewController {
    
}
@property(nonatomic,retain)IBOutlet UILabel *treeIDLable;
@property(nonatomic,retain)IBOutlet UILabel *treeKindLable;
@property(nonatomic,retain)IBOutlet UILabel *treeAddressLable;
-(void) setIDText:(NSString *) textID setKindText:(NSString *) textKind setAddressText:(NSString*) textAddress ;
-(IBAction)buttonUse:(id)sender;
@end
