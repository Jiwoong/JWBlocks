//
//  JWBlockActionSheet.h
//  JWBlocks
//
//  Created by 허지웅 on 12. 12. 11..
//  Copyright (c) 2012년 jwheo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^DismissBlock)(NSInteger);

@interface JWBlockActionSheet : UIActionSheet <UIActionSheetDelegate>

- (id)initWithTitle:(NSString *)title
			  block:(void (^)(NSInteger index)) block
  cancelButtonTitle:(NSString *)cancelButtonTitle
destructiveButtonTitle:(NSString *)destructiveButtonTitle
  otherButtonTitles:(NSString *)otherButtonTitles, ...;



@end
