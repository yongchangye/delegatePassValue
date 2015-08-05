//
//  ViewController.m
//  代理传值
//
//  Created by 叶永长 on 8/5/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "ViewController.h"
#import "firstView.h"
@interface ViewController ()<ViewDelegate>/////代理

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    firstView *view = [[firstView alloc]initWithFrame:CGRectMake(10, 100, 50, 50)];
    view.delegate = self;
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
}

//代理的方法
-(void)viewDelegateSelect:(UIButton *)sender{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"firstView的代理" message:@"页面跳转" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
    [alert show];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
