//
//  CanvasView.h
//  DrawPrj
//
//  Created by 何苗 on 2018/3/12.
//  Copyright © 2018年 joehe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LineModel.h"

@interface CanvasView : UIView

@property(nonatomic, strong) UIColor *color;
@property CGFloat lineWidth;

-(void)undo;
-(void)clear;

@end
