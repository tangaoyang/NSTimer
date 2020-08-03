//
//  ViewController.m
//  NSTimer
//
//  Created by cinderella on 2020/8/3.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "ViewController.h"
#import "TimeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    TimeViewController *time = [[TimeViewController alloc] init];
    [self presentViewController:time animated:NO completion:nil];
}


@end
