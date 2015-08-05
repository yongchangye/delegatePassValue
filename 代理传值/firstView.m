//
//  firstView.m
//  代理传值
//
//  Created by 叶永长 on 8/5/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "firstView.h"

@implementation firstView
//初始化view
-(instancetype) initWithFrame:(CGRect)frame{/////
    self = [super initWithFrame:frame];
    if (self) {
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
        button.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
        [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        
    }
    return self;
}

///button点击事件
-(void)btnClick:(UIButton *)sender{
    if ([self.delegate respondsToSelector:@selector(viewDelegateSelect:)]) {
        [self.delegate viewDelegateSelect:sender];
    }
}
@end
