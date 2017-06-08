//
//  spirite.m
//  TestAction
//
//  Created by 1 on 2017/5/8.
//  Copyright © 2017年 冷春雨. All rights reserved.
//

#import "spirite.h"

@implementation spirite
@synthesize clickAction =_clickAction;
-(instancetype)initWithDictionarayxixixi:(Dictionarayxixixi *)xixi{
    if (self =[super init]) {
        
        [self setValue:xixi.muParams[@"clickAction"] forKey:@"clickAction"];
        
    }
    return self;
}
-(void)setClickAction:(BarrageClickAction)clickAction{
    
    _clickAction =[clickAction copy];
    
}
@end
