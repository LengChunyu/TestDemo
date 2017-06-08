//
//  ViewController.m
//  TestAction
//
//  Created by 1 on 2017/5/8.
//  Copyright © 2017年 冷春雨. All rights reserved.
//
#import "ViewController.h"
#import "Dictionarayxixixi.h"
#import "spirite.h"
#import "XxixiViewController.h"
#import "LengchunyuDatePicker.h"
@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property(nonatomic,strong)spirite *xix;    //
//@property(nonatomic,assign)BarrageClickAction xixixix;
@property(nonatomic,strong)UILabel *dateLabel;
@end
@implementation ViewController
@synthesize clickAction =_clickAction;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor whiteColor];
    self.dateLabel =[[UILabel alloc]initWithFrame:CGRectMake(0,64, self.view.bounds.size.width, 30)];
    self.dateLabel.textAlignment =NSTextAlignmentCenter;
    self.dateLabel.textColor =[UIColor redColor];
    [self.view addSubview:self.dateLabel];
//    self.xix =[[spirite alloc]initWithDictionarayxixixi:[self xixixiixiixixixix]];
    
//    [self setValue:[self xixixiixiixixixix].muParams[@"clickAction"] forKey:@"clickAction"];
    self.clickAction = ^{
        NSLog(@"wojiuhshinamezuishau帅的人");
    };
    UIButton *button =[[UIButton alloc]initWithFrame:CGRectMake(0, 0,self.view.bounds.size.width, self.view.bounds.size.height)];
    [button addTarget:self action:@selector(xixixiButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
//    [self creatDatePicker];
    
}
-(void)creatDatePicker{
    
    NSString *formatStringForHours=[NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:[NSLocale currentLocale]];
    NSRange containsA=[formatStringForHours rangeOfString:@"a"];
    BOOL hasAMPM=containsA.location!=NSNotFound;
    if (hasAMPM==true)
    {
        NSLog(@"为12小时制");
    }
    else
    {
        NSLog(@"为24小时制");
    }
    
    UIDatePicker *datePicker1 =[[UIDatePicker alloc]initWithFrame:CGRectMake(0,100,self.view.bounds.size.width, 216)];
    
    datePicker1.datePickerMode =UIDatePickerModeDateAndTime;
    datePicker1.date =[NSDate date];
    [datePicker1 addTarget:self action:@selector(selectDate:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:datePicker1];
    
}

-(void)xixixiButton:(UIButton *)button{
    
    NSDateFormatter *formatter =[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    LengchunyuDatePicker *lengchunDatePicker =[LengchunyuDatePicker showDatePicker:CGRectMake(0,([UIScreen mainScreen].bounds.size.height-216)/2, self.view.bounds.size.width, 216)];
    lengchunDatePicker.datePicker.datePickerMode =UIDatePickerModeTime;
    [lengchunDatePicker.datePicker setDate:self.dateLabel.text.length>0?[formatter dateFromString:self.dateLabel.text]:[NSDate date]];
    
    __weak typeof(self) weakSelf =self;
    lengchunDatePicker.dateBlock = ^(NSString *dateString) {
        weakSelf.dateLabel.text =dateString;
    };
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
-(void)xixixi:(NSString *)name{
    
    NSLog(@"xixixi%@",name);
}
-(void)selectDate:(id)sender{
    
    UIDatePicker *datePicker =(UIDatePicker *)sender;
    
    NSDateFormatter *dateFormatter =[[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *dateString =[dateFormatter stringFromDate:datePicker.date];
    self.dateLabel.text =[dateString substringToIndex:dateString.length-3];
    
}
@end
