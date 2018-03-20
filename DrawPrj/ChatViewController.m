//
//  ChatViewController.m
//  DrawPrj
//
//  Created by 何苗 on 2018/3/13.
//  Copyright © 2018年 joehe. All rights reserved.
//

#import "ChatViewController.h"
//#import "ChatView.h"

@interface ChatViewController ()

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 圆环
    CGFloat oneDegree = M_PI/180;
    [self drawChat:[UIColor orangeColor] start:0 end:oneDegree*40];
    [self drawChat:[UIColor redColor] start:oneDegree*42 end:oneDegree*92];
    [self drawChat:[UIColor blueColor] start:oneDegree*94 end:oneDegree*286];
    [self drawChat:[UIColor brownColor] start:oneDegree*288 end:oneDegree*358];
    
    // 返回键
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(0, 20, 80, 50);
    [backBtn setImage:[UIImage imageNamed:@"chahao"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(clickBack) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)drawChat:(UIColor *)color start:(CGFloat)start end:(CGFloat)end {
    CAShapeLayer *layer = [CAShapeLayer new];
    layer.lineWidth = 36;
    // 圆环的颜色
    layer.strokeColor = color.CGColor;
    // 背景填充色
    layer.fillColor = [UIColor clearColor].CGColor;
    // 初始化一个路径
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:self.view.center radius:self.view.frame.size.width/6 startAngle:start endAngle:end clockwise:YES];
    // 让贝塞尔曲线与CAShapeLayer产生联系
    layer.path = [path CGPath];
    //添加并显示
    [self.view.layer addSublayer:layer];
}

-(void)clickBack {
    [self.navigationController popViewControllerAnimated:YES];
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
