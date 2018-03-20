//
//  ColorView.h
//  DrawPrj
//
//  Created by 何苗 on 2018/3/13.
//  Copyright © 2018年 joehe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorView : UIView

@property(nonatomic, copy) void(^selectColorBlock)(UIColor *color);

-(void)showAnimation;

@end
