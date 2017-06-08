//
//  LengchunyuDatePicker.m
//  TestAction
//
//  Created by 1 on 2017/5/26.
//  Copyright © 2017年 冷春雨. All rights reserved.
//

#import "LengchunyuDatePicker.h"
@interface LengchunyuDatePicker ()

@property(nonatomic,strong)UIView *backView;

@end
@implementation LengchunyuDatePicker

+(LengchunyuDatePicker *)showDatePicker:(CGRect)frame{
    
    LengchunyuDatePicker *dateView =[[LengchunyuDatePicker alloc]initWithFrame:frame];
    dateView.backgroundColor =[UIColor whiteColor];
    UIWindow *window =[[[UIApplication sharedApplication]delegate]window];
    dateView.datePicker =[[UIDatePicker alloc]init];
    [dateView.datePicker addTarget:dateView action:@selector(changeDate:) forControlEvents:UIControlEventValueChanged];
    [dateView addSubview:dateView.datePicker];
    
    
    dateView.backView =[[UIView alloc]initWithFrame:window.bounds];
    dateView.backView.backgroundColor =[UIColor blackColor];
    dateView.backView.alpha =0;
    [window addSubview:dateView.backView];
    
    UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc]initWithTarget:dateView action:@selector(hideViewMethod:)];
    [tap setNumberOfTapsRequired:1];
    [dateView.backView addGestureRecognizer:tap];
    [window addSubview:dateView];
    dateView.transform =CGAffineTransformScale(dateView.transform, 0,0);
    //设置动态图
    __block LengchunyuDatePicker *blockDatePicker =dateView;
    [UIView animateWithDuration:0.5 animations:^{
        blockDatePicker.backView.alpha =0.3;
        blockDatePicker.transform = CGAffineTransformIdentity;
    }];
    
    return dateView;
    
}
-(instancetype)initWithFrame:(CGRect)frame{

    if (self =[super initWithFrame:frame]) {
    
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    self.datePicker.frame =self.bounds;
    
}
#pragma mark-时间变化是的时间
-(void)changeDate:(UIDatePicker *)sender{

    NSDateFormatter *formatter =[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    if (self.dateBlock) {
        self.dateBlock([formatter stringFromDate:sender.date]);
    }

}
#pragma mark-点击时消失界面
-(void)hideViewMethod:(UITapGestureRecognizer *)tap{
    //设置关闭时候的动态图
    [UIView animateWithDuration:0.5 animations:^(void) {
        self.transform =CGAffineTransformScale(self.transform, 0.1,0.1);
        self.backView.alpha = 0;
        } completion:^(BOOL isFinished) {
            
            [self.backView removeFromSuperview];
            [self removeFromSuperview];
            
        }];

}
@end
