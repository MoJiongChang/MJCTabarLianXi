//
//  AppDelegate.h
//  MJCTabarLianXi
//
//  Created by gdshwhl007 on 16/11/4.
//  Copyright © 2016年 gdshwhl007. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MJCUITabBarController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

{
    MJCUITabBarController *_mtbc;
}

@property (strong, nonatomic) UIWindow *window;

@property(nonatomic,strong) MJCUITabBarController *tabBar;

@end

