//
//  ViewController.m
//  JWBlocks
//
//  Created by 허지웅 on 12. 12. 11..
//  Copyright (c) 2012년 jwheo. All rights reserved.
//

#import "ViewController.h"

#import "JWBlockActionSheet.h"
#import "JWBlockAlertView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onActionSheet:(id)sender {

	void (^block)(NSInteger, JWBlockActionSheet*)  = ^(NSInteger index, JWBlockActionSheet* blockActionSheet) {
		NSLog(@"ButtonIndex %d %@", index, [blockActionSheet debugDescription]);
	};
	
	[JWBlockActionSheet showActionSheetWithTitle:@"title"
										  inView:self.view
								 completionBlock:block
							   cancelButtonTitle:@"asdfas"
						  destructiveButtonTitle:nil
							   otherButtonTitles:nil];

}

- (IBAction)onAlertView:(id)sender {
	JWBlockAlertView* alert =[[JWBlockAlertView alloc] initWithTitle:@"title" message:@"message" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"others", nil];

	[alert show];
}
@end
