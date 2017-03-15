//
//  MJCDengLuViewController.m
//  MJCTabarLianXi
//
//  Created by gdshwhl007 on 16/11/4.
//  Copyright © 2016年 gdshwhl007. All rights reserved.
//

#import "MJCDengLuViewController.h"

#import "MJCUITabBarController.h"

#import "AppDelegate.h"

@interface MJCDengLuViewController ()

@end

@implementation MJCDengLuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.   
    
    UIButton *dlBut = [[UIButton alloc]initWithFrame:CGRectMake(40, 100, 100, 100)];
    dlBut.backgroundColor = [UIColor redColor];
    [dlBut addTarget:self action:@selector(dengluButClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dlBut];
    
}

-(void)dengluButClick{
    
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
   
    MJCUITabBarController *mjctab = [[MJCUITabBarController alloc]init];
//    self.window.rootViewController = mjctab;
//    [self.window makeKeyAndVisible];
    
//    app.window.rootViewController = mjctab;
    
    
    
    app.window.rootViewController = mjctab;
    
    app.tabBar = mjctab;

    
//    app.tabBar = _tabBar;
    
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
