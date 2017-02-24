//
//  ViewController.m
//  ImageLoadingAnimation
//
//  Created by 刘健 on 2017/2/23.
//  Copyright © 2017年 刘健. All rights reserved.
//

#import "ViewController.h"
#import "LJProgressImageView.h"

@interface ViewController ()

@property (nonatomic, strong) LJProgressImageView *progressView;

@end

@implementation ViewController

#pragma mark - LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.progressView];
    self.progressView.frame = CGRectMake(100, 100, 200, 200);
    self.progressView.image = [UIImage imageNamed:@"1.png"];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
#warning 更改时间即可调整动画速度
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(clicked) userInfo:nil repeats:true];
}

- (void)clicked {
    self.progressView.progress += 0.1;
}

#pragma mark - Lazy
- (LJProgressImageView *)progressView {
    if (_progressView == nil) {
        _progressView = [[LJProgressImageView alloc] initWithFrame:CGRectZero];
    }
    return _progressView;
}

@end
