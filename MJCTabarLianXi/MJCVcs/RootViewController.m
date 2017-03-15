//
//  RootViewController.m
//  MJCTabarLianXi
//
//  Created by gdshwhl007 on 16/11/4.
//  Copyright © 2016年 gdshwhl007. All rights reserved.
//

#import "RootViewController.h"

#import "nextViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = YES;

//    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
}
- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;
    
//    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0){
//        //设置不从导航栏下面开始计算坐标(视图控制器四条边不留空间)
//        self.edgesForExtendedLayout = UIRectEdgeNone;
//        //设置操作栏都不透明
//        self.extendedLayoutIncludesOpaqueBars = NO;
//        self.modalPresentationCapturesStatusBarAppearance = NO;
//        //如果为YES,UIViewController只有唯一一个UIScollView或者其子类,UIScollView滚动经过各种bar下面时能隐约看到内容
//        self.automaticallyAdjustsScrollViewInsets = NO;
//    }
//
//    //二级页面隐藏tabBar
//    NSArray *classNameVC=@[@"oneViewController",@"towViewController",@"threeViewController",@"fourthViewController"];
//    BOOL isVC=[classNameVC containsObject:NSStringFromClass([self class])];
//    if (!isVC) {
//        self.hidesBottomBarWhenPushed=YES;
//    }

    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
