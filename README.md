# FGGAnimation
用法 ：
    DetailViewController *dvc=[[DetailViewController alloc] init];
//    设置转场动画
//    ------------------------------------------------------------
    [FGGAnimation addAnimationOnView:self.view animation:FGGAnimationTypeCameral direction:FGGAnimationDirectionLeft duration:0.5];
//    ------------------------------------------------------------
//    导航推出
    [self.navigationController pushViewController:dvc animated:YES];
    
push视图时添加酷炫的转场动画
