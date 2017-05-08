//
//  UIView+DBExtension.m
//  UIView的分类,为了简化view中尺寸之类的设置
//
//  Created by Donkey-Tao on 15/2/29.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//

#import "UIView+DBExtension.h"

@implementation UIView (DBExtension)

//设置setter方法

-(void)setSize:(CGSize)size{
    
    CGRect frame=self.frame;
    frame.size=size;
    self.frame=frame;
}

-(void)setWidth:(CGFloat)width{
    
    CGRect frame=self.frame;
    frame.size.width=width;
    self.frame=frame;
}

-(void)setHeight:(CGFloat)height{

    CGRect frame=self.frame;
    frame.size.height=height;
    self.frame=frame;

}

-(void)setX:(CGFloat)x{

    CGRect frame=self.frame;
    frame.origin.x=x;
    self.frame=frame;

}

-(void)setY:(CGFloat)y{

    CGRect frame=self.frame;
    frame.origin.y=y;
    self.frame=frame;
}


-(void)setCenterX:(CGFloat)centerX{
    CGPoint center=self.center;
    center.x=centerX;
    self.center=center;
}


-(void)setCenterY:(CGFloat)centerY{

    CGPoint center=self.center;
    center.y=centerY;
    self.center=center;

}

//设置getter方法

-(CGSize)size{

    return self.frame.size;
}

-(CGFloat)width{
    
    return self.frame.size.width;
}


-(CGFloat)height{
    
    return self.frame.size.height;
}

-(CGFloat)x{
    
    return self.frame.origin.x;
}


-(CGFloat)y{
    
    return self.frame.origin.y;
}

-(CGFloat)centerX{
    return  self.center.x;

}
-(CGFloat)centerY{
    
    return self.center.y;
}

-(BOOL)db_isShowingOnKeyWindow{
    
    // 主窗口
    UIWindow *window=[UIApplication sharedApplication].keyWindow;
    
    // 以主窗口左上角为坐标原点, 计算self的矩形框
    CGRect newRect=[window  convertRect:self.frame fromView:self.superview];
    CGRect bounds=window.bounds;
    
     // 主窗口的bounds 和 self的矩形框 是否有重叠
    BOOL intersects=CGRectIntersectsRect(newRect, bounds);
    
    return !self.isHidden&&self.alpha>0.01&&self.window==window&&intersects;
}


@end
