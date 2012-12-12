//
//  JWBlockActionSheet.m
//  JWBlocks
//
//  Created by 허지웅 on 12. 12. 11..
//  Copyright (c) 2012년 jwheo. All rights reserved.
//

#import "JWBlockActionSheet.h"

typedef void (^NotiBlock)(NSInteger index, JWBlockActionSheet* blockActionSheet);

@implementation JWBlockActionSheet {
	@private
	NotiBlock _notiBlock;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

+ (id)showActionSheetWithTitle:(NSString*)title
						inView:(UIView*)view
			   completionBlock:(void (^)(NSInteger index, JWBlockActionSheet* blockActionSheet)) block
			 cancelButtonTitle:(NSString*)cancelButtonTitle
		destructiveButtonTitle:(NSString*)destructiveButtonTitle
			 otherButtonTitles:(NSString*)otherButtonTitles, ...
{
	JWBlockActionSheet *actionSheet = [[JWBlockActionSheet alloc] initWithTitle:title
																completionBlock:block
															  cancelButtonTitle:cancelButtonTitle
														 destructiveButtonTitle:destructiveButtonTitle
															  otherButtonTitles:otherButtonTitles, nil];
	
	[actionSheet showInView:view];
	return actionSheet;
}

- (id)initWithTitle:(NSString *)title
	completionBlock:(void (^)(NSInteger index, JWBlockActionSheet*)) block
  cancelButtonTitle:(NSString *)cancelButtonTitle
destructiveButtonTitle:(NSString *)destructiveButtonTitle
  otherButtonTitles:(NSString *)otherButtonTitles, ...
{
	self = [super initWithTitle:title
					   delegate:self
			  cancelButtonTitle:cancelButtonTitle
		 destructiveButtonTitle:destructiveButtonTitle
			  otherButtonTitles:otherButtonTitles, nil];
	
	if (self) {
		_notiBlock = [block copy];
	}
	
	return self;
}

#pragma mark - UIActionSheetDelegate

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
	if (_notiBlock) {
		_notiBlock(buttonIndex, self);
	}
}
@end
