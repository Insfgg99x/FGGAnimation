//
//  FGGPushAnimation.h
//  转场特效
//
//  Created by 峰哥哥-.- on 15/7/24.
//  Copyright (c) 2015年 峰哥哥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**转场动画特效*/
typedef NS_ENUM(NSInteger, FGGAnimationType)
{
    FGGAnimationTypeCameral=0,  //相机
    FGGAnimationTypeCube,       //立方体
    FGGAnimationTypeFade,       //淡入
    FGGAnimationTypeMoveIn,     //移入
    FGGAnimationTypeFlip,       //翻转
    FGGAnimationTypeCurl,       //翻页
    FGGAnimationTypeUnCurl,     //添页
    FGGAnimationTypePush,       //平移
    FGGAnimationTypeReveal,     //移走
    FGGAnimationTypeRipple,     //水波
    FGGAnimationTypeSuck,       //收起
};
/**动画方向*/
typedef NS_ENUM(NSInteger, FGGAnimationDirection)
{
    FGGAnimationDirectionLeft=0,
    FGGAnimationDirectionRight,
    FGGAnimationDirectionTop,
    FGGAnimationDirectionDown,
};
/**添加转场动画的类*/
@interface FGGAnimation : NSObject

/**
 *  添加转场动画
 *
 *  @param destinationView 动画添加到这个视图上
 *  @param animationType   动画类型
 *  @param direction       方向
 *  @param duration        持续时间
 */

/**添加动画效果*/
+(void)addAnimationOnView:(UIView *)destinationView animation:(FGGAnimationType)animationType direction:(FGGAnimationDirection)direction duration:(CGFloat)duration;

@end
