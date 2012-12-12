//
//  JWBlockActionSheet.h
//  JWBlocks
//
//  Created by 허지웅 on 12. 12. 11..
//  Copyright (c) 2012년 jwheo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JWBlockActionSheet : UIActionSheet <UIActionSheetDelegate>

+ (id)showActionSheetWithTitle:(NSString*)title
						inView:(UIView *)view
			   completionBlock:(void (^)(NSInteger index, JWBlockActionSheet* blockActionSheet)) block
			 cancelButtonTitle:(NSString*)cancelButtonTitle
		destructiveButtonTitle:(NSString*)destructiveButtonTitle
			 otherButtonTitles:(NSString*)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;


- (id)initWithTitle:(NSString *)title completionBlock:(void (^)(NSInteger index, JWBlockActionSheet* blockActionSheet)) block cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;



@end
