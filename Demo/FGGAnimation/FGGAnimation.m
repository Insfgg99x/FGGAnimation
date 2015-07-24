//
//  FGGPushAnimation.m
//  转场特效
//
//  Created by 峰哥哥-.- on 15/7/24.
//  Copyright (c) 2015年 峰哥哥. All rights reserved.
//

#import "FGGAnimation.h"
#import <QuartzCore/QuartzCore.h>

@implementation FGGAnimation

/**添加转场动画的类*/
+(void)addAnimationOnView:(UIView *)destinationView animation:(FGGAnimationType)animationType direction:(FGGAnimationDirection)direction duration:(CGFloat)duration
{
    NSArray *animations=@[
                          @"cameraIris",
                          @"cube",
                          @"fade",
                          @"moveIn",
                          @"oglFlip",
                          @"pageCurl",
                          @"pageUnCurl",
                          @"push",
                          @"reveal",
                          @"rippleEffect",
                          @"suckEffect"
                          ];
    NSArray *subTypes=@[
                        @"fromLeft",
                        @"fromRight",
                        @"fromTop",
                        @"fromBottom"
                        ];
    
    CATransition *transition=[CATransition animation];
    transition.duration=duration;
    transition.type=animations[animationType];
    transition.subtype=subTypes[direction];
    [destinationView.superview.layer addAnimation:transition forKey:nil];
    
}
@end
