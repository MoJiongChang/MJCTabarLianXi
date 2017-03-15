//
//  MJCUITabBarController.h
//  MJCTabarLianXi
//
//  Created by gdshwhl007 on 16/11/4.
//  Copyright © 2016年 gdshwhl007. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MJCUITabBarController : UITabBarController

@property(nonatomic,strong)UIImageView *myBadgeView;

//切换控制器
-(void)switchSelectedTabbarIndex:(NSInteger)selectedIndex;
//是否显示我的标签小红点视图
-(void)setMyBadgeViewHidden:(BOOL)hidden;

@end
