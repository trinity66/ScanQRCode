//
//  DisabledView.m
//  ZhongJiangVDisk
//
//  Created by shijian01 on 16/8/23.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import "DisabledView.h"

@interface DisabledView ()

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation DisabledView
- (void)awakeFromNib
{
    [super awakeFromNib];
    _button.layer.borderColor = [UIColor grayColor].CGColor;
    _alert.layer.borderColor = [UIColor brownColor].CGColor;
    _alert.layer.masksToBounds = YES;
}
- (IBAction)buttonAction:(id)sender {
    if (self.btnActionBlock) {
        self.btnActionBlock();
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
