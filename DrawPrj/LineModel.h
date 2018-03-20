//
//  LineModel.h
//  DrawPrj
//
//  Created by 何苗 on 2018/3/12.
//  Copyright © 2018年 joehe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LineModel : NSObject

@property(nonatomic, assign)CGMutablePathRef path;
@property(nonatomic, strong)UIColor *color;
@property CGFloat lineWidth;

@end
