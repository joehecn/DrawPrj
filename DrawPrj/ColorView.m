//
//  ColorView.m
//  DrawPrj
//
//  Created by 何苗 on 2018/3/13.
//  Copyright © 2018年 joehe. All rights reserved.
//

#import "ColorView.h"

@interface ColorView ()

@property(nonatomic, strong) NSArray *colors;
@property(nonatomic, strong) UIView *bottomView;

@end

@implementation ColorView

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.hidden = YES;
        [self initColorViews];
    }
    return self;
}

-(void) initColorViews {
    self.colors = @[[UIColor cyanColor],
                    [UIColor redColor],
                    [UIColor greenColor],
                    [UIColor blueColor],
                    [UIColor yellowColor],
                    [UIColor darkGrayColor],
                    [UIColor purpleColor],
                    [UIColor brownColor],
                    [UIColor magentaColor],
                    [UIColor blackColor]];
    
    CGFloat padding = 5;
    CGFloat width = (CGRectGetWidth(self.frame) - 40 - 6 * padding) / 5;
    CGFloat height = 50;
    [self.colors enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(20 + idx % 5 * (width + padding), 10 + idx / 5 * (height + padding), width, height);
        btn.backgroundColor = obj;
        btn.tag = 100 + idx;
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.bottomView addSubview:btn];
        
        if (idx == self.colors.count - 1) {
            btn.layer.borderColor = [UIColor whiteColor].CGColor;
            btn.layer.borderWidth = 4;
        }
    }];
}

-(void)btnAction:(UIButton *)btn {
    [self.colors enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIButton *curBtn = [self.bottomView viewWithTag:idx + 100];
        if (curBtn.tag == btn.tag) {
            curBtn.layer.borderColor = [UIColor whiteColor].CGColor;
//            curBtn.layer.borderWidth = 4;
            if (self.selectColorBlock) {
                self.selectColorBlock(curBtn.backgroundColor);
            }
        } else {
            curBtn.layer.borderColor = curBtn.backgroundColor.CGColor;
//            curBtn.layer.borderWidth = 4;
        }
    }];
}

-(void)showAnimation {
    self.hidden = NO;
    
    __block CGRect rect = self.bottomView.frame;
    [UIView animateWithDuration:0.1 animations:^{
        rect.origin.y = CGRectGetHeight(self.frame) - 125;
//        NSLog(@"%f", rect.origin.y);
        self.bottomView.frame = rect;
    }];
}

-(void)hideAnimation {
    __block CGRect rect = self.bottomView.frame;
    [UIView animateWithDuration:0.1 animations:^{
        rect.origin.y = CGRectGetHeight(self.frame);
        self.bottomView.frame = rect;
    } completion:^(BOOL finished) {
        self.hidden = YES;
    }];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self hideAnimation];
}

-(UIView *)bottomView {
    if (!_bottomView) {
//        NSLog(@"%f", self.frame.size.height);
        _bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.frame), CGRectGetWidth(self.frame), 125)];
        _bottomView.backgroundColor = [UIColor orangeColor];
        [self addSubview:_bottomView];
    }
    return _bottomView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
