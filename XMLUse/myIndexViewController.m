//
//  myIndexViewController.m
//  XMLUse
//
//  Created by yimyo on 2011/10/11.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "myIndexViewController.h"


@implementation myIndexViewController

@synthesize treeIDLable;
@synthesize treeKindLable;
@synthesize treeAddressLable;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    //[self change];
    //treeIDLable.text = @"AA";
    //treeKindLable.text = @"BB";
    //treeAddressLable.text = @"CC";
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(void) setIDText:(NSString *) textID setKindText:(NSString *) textKind setAddressText:(NSString*) textAddress {
	//UITextView *view = (UITextView *)[self view];
	//[view setText:text];
    self.treeIDLable.text = textID;
    self.treeKindLable.text = textKind;
    self.treeAddressLable.text = textAddress;
}


-(void)change2{
    NSLog(@"AAA2222");
    self.treeIDLable.text = @"DSXSAXSD2222"; 
}  
-(IBAction)buttonUse:(id)sender{
    [self change2];
}
@end
