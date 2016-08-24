//
//  DisabledView.h
//  ZhongJiangVDisk
//
//  Created by shijian01 on 16/8/23.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^btnActionBlock)();
@interface DisabledView : UIView
@property (weak, nonatomic) IBOutlet UILabel *alert;
@property (nonatomic, copy) btnActionBlock btnActionBlock;
@end
