//
//  ToolView.h
//  DrawPrj
//
//  Created by 何苗 on 2018/3/12.
//  Copyright © 2018年 joehe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToolView : UIView

@property(nonatomic, copy) void(^penBlock)(void);
@property(nonatomic, copy) void(^eraserBlock)(void);
@property(nonatomic, copy) void(^colorBlock)(void);
@property(nonatomic, copy) void(^undoBlock)(void);
@property(nonatomic, copy) void(^clearBlock)(void);
@property(nonatomic, copy) void(^saveBlock)(void);
@property(nonatomic, copy) void(^sliderBlock)(CGFloat width);

@end
