//
//  ViewController.m
//  JWBlocks
//
//  Created by 허지웅 on 12. 12. 11..
//  Copyright (c) 2012년 jwheo. All rights reserved.
//

#import "ViewController.h"

#import "JWBlockActionSheet.h"

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
	JWBlockActionSheet* action = [[JWBlockActionSheet alloc] initWithTitle:@"title" block:^(NSInteger index) {
		NSLog(@"%d", index);
	} cancelButtonTitle:@
								  "cancel"destructiveButtonTitle:@"des" otherButtonTitles:nil];
	
	[action showInView:self.view];
}
@end
