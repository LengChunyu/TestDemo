//
//  XxixiViewController.m
//  TestAction
//
//  Created by 1 on 2017/5/26.
//  Copyright © 2017年 冷春雨. All rights reserved.
//

#import "XxixiViewController.h"

@interface XxixiViewController ()

@end

@implementation XxixiViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor grayColor];
    UIButton *button =[[UIButton alloc]initWithFrame:CGRectMake(0, 0,self.view.bounds.size.width, self.view.bounds.size.height)];
    [button addTarget:self action:@selector(xixixiButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}
-(void)xixixiButton:(UIButton *)button{
    
    if ([self.hahahahahDelegate respondsToSelector:@selector(xixixi:)]) {
       [self.hahahahahDelegate xixixi:@"冷春雨最帅"];
    }
    
    if ([self.hahahahahDelegate respondsToSelector:@selector(clickAction)]) {
        self.hahahahahDelegate.clickAction();
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
