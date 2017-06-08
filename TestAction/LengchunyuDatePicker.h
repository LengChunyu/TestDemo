//
//  LengchunyuDatePicker.h
//  TestAction
//
//  Created by 1 on 2017/5/26.
//  Copyright © 2017年 冷春雨. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^Myblock)(NSString *dateString);
@interface LengchunyuDatePicker : UIView

+(LengchunyuDatePicker *)showDatePicker:(CGRect)frame;

@property(nonatomic,strong)UIDatePicker *datePicker;
@property(nonatomic,copy)Myblock dateBlock;

@end
