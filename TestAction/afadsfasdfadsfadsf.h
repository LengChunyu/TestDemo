//
//  afadsfasdfadsfadsf.h
//  TestAction
//
//  Created by 1 on 2017/5/8.
//  Copyright © 2017年 冷春雨. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^BarrageClickAction)(void);


@protocol BarrageClickActionxixx <NSObject>
//代理中直接生成了一个
@property(nonatomic,copy)BarrageClickAction clickAction;      //xixix;
-(void)xixixi:(NSString *)name;

@end
