//
//  FunctionViewController.m
//  DrawPrj
//
//  Created by 何苗 on 2018/3/12.
//  Copyright © 2018年 joehe. All rights reserved.
//

#import "FunctionViewController.h"

@interface FunctionViewController ()

@end

@implementation FunctionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor =[UIColor whiteColor];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(0, 20, 80, 50);
    [backBtn setImage:[UIImage imageNamed:@"chahao"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(clickBack:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    
    UIButton *canvasBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    canvasBtn.frame = CGRectMake(self.view.center.x - 50, self.view.center.y, 100, 50);
    [canvasBtn setTitle:@"画图板" forState:UIControlStateNormal];
    [canvasBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [canvasBtn addTarget:self action:@selector(clickCanvas:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:canvasBtn];
    
    UIButton *chatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    chatBtn.frame = CGRectMake(self.view.center.x - 50, self.view.center.y + 50, 100, 50);
    [chatBtn setTitle:@"环形图" forState:UIControlStateNormal];
    [chatBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [chatBtn addTarget:self action:@selector(clickChat) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:chatBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)clickBack:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

-(void)clickCanvas:(id)sender {
    CanvasViewController *vc = [[CanvasViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)clickChat {
    ChatViewController *vc = [[ChatViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
