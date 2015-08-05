//
//  firstView.h
//  代理传值
//
//  Created by 叶永长 on 8/5/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import <UIKit/UIKit.h>
//代理
@protocol ViewDelegate <NSObject>
-(void)viewDelegateSelect:(UIButton *)sender;

@end;

@interface firstView : UIView

@property (nonatomic,assign) id <ViewDelegate> delegate; ///assign  不能用strong
@end
