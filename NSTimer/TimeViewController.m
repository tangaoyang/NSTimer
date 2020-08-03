//
//  TimeViewController.m
//  NSTimer
//
//  Created by cinderella on 2020/8/3.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "TimeViewController.h"
#import "NSTimer+BlocksSupport.h"
#import "TAYProxy.h"
#import "TAYWeakProxy.h"


@interface TimeViewController ()

@property (nonatomic,strong) NSTimer *timer;

@end

@implementation TimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建 NSTimer
//    NSTimer *aTimer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(doSomething) userInfo:nil repeats:YES];
//    // 赋值给 weak 变量
//    self.timer = aTimer;
//    // NSTimer 加入 NSRunLoop
//    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
//    if (self.timer == nil) {
//        NSLog(@"timer 被释放了");
//    }
    
    // 使用weakSelf
//    __weak typeof(self) weakSelf = self;
    // 不可以
//    self.timer = [NSTimer timerWithTimeInterval:1.0 target:weakSelf selector:@selector(doSomething) userInfo:nil repeats:YES];
//    self.timer = [NSTimer timerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
//        [weakSelf doSomething];
//    }];
//    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
//        [weakSelf doSomething];
//    }];
    
    
    // 中间代理对象
//    self.timer = [NSTimer timerWithTimeInterval:1.0 target:[TAYProxy proxyWithTarget:self] selector:@selector(doSomething) userInfo:nil repeats:YES];
//    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
    
    // category
    self.timer =[NSTimer xx_scheduledTimerWithTimeInterval:1.0 repeats:YES block:^{
        NSLog(@"doSomething");
    }];
    
}

//- (void)doSomething {
//    NSLog(@"doSomething");
//}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (void)dealloc {
    NSLog(@"dealloc");
    // ViewController执行dealloc时timer也销毁
    [self.timer invalidate];
}
    
//    __weak typeof(self) weakSelf = self;
//
//    // NSTimer 创建之后没有被自动加入 RunLoop
//    self.timer = [NSTimer timerWithTimeInterval:1.0 target:weakSelf selector:@selector(outputLog:) userInfo:nil repeats:YES];
//    NSLog(@"%@", _timer);
//    if (self.timer == nil) {
//        NSLog(@"timer 被释放了");
//    }
    
    // 创建 NSTimer
//    NSTimer *doNotWorkTimer = [NSTimer timerWithTimeInterval:1.0 target:weakSelf selector:@selector(outputLog:) userInfo:nil repeats:YES];
//    // 赋值给 weak 变量
//    self.timer = doNotWorkTimer;
//    // NSTimer 加入 NSRunLoop
//    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
    
//    self.timer =[NSTimer xx_scheduledTimerWithTimeInterval:1.0 repeats:YES block:^{
//        NSLog(@"it is log!");
//    }];
    
//}

- (void)outputLog:(NSTimer *)timer {
    NSLog(@"it is log!");
}

//- (void)dealloc {
//    [self.timer invalidate];
//    NSLog(@"TimerViewController dealloc!");
//}
//
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self dismissViewControllerAnimated:NO completion:nil];
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
