//
//  ViewController.m
//  DrawPrj
//
//  Created by 何苗 on 2018/3/12.
//  Copyright © 2018年 joehe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UnBlockView *blockView = [[UnBlockView alloc]initWithFrame:self.view.frame];
//    blockView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:blockView];
    
    blockView.unblockViewBlock = ^(UnBlockView *bView, BOOL success) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"title" message:success?@"解锁成功":@"解锁失败" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [bView reset];
            if (success) {
                // 跳转到一个新页面
                FunctionViewController *vc = [[FunctionViewController alloc]init];
                UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
                [nav setNavigationBarHidden:YES];
                [self presentViewController:nav animated:YES completion:nil];
            }
        }];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
    };
}

//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
