//
//  ViewController.m
//  ScanQRCodeTest
//
//  Created by shijian01 on 16/8/24.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import "ViewController.h"
#import "ScanQRCodeController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *qrCodeUrl;

@end
__weak ViewController *weakSelf;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    weakSelf = self;
    [self intoQRCodeVC];
    // Do any additional setup after loading the view, typically from a nib.
}
/*!
 *  扫一扫
 */
- (void)intoQRCodeVC {
    ScanQRCodeController *qrcodeVC = [[ScanQRCodeController alloc] init];
    __block ScanQRCodeController*qr = qrcodeVC;
    [qrcodeVC setDidReceiveBlock:^(NSString *rst) {
        NSLog(@"------------%@", rst);
        [weakSelf scanQRCodeWithURL:rst];
        [qr selfRemoveFromSuperview];
    }];
    [self addChildViewController:qrcodeVC];
    [self.view addSubview:qrcodeVC.view];
    
}
- (void)scanQRCodeWithURL:(NSString *)url
{
#warning 扫描二维码之后的处理
    _qrCodeUrl.text = [NSString stringWithFormat:@"二维码扫描所得链接\t%@",url];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
