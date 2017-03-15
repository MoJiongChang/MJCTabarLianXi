//
//  nextViewController.m
//  MJCTabarLianXi
//
//  Created by gdshwhl007 on 16/11/4.
//  Copyright © 2016年 gdshwhl007. All rights reserved.
//

#import "nextViewController.h"

#import "nexttowViewController.h"

#import "AppDelegate.h"

//屏幕宽
#define SCREEN_WIDTH     ([[UIScreen mainScreen] bounds].size.width)
//屏幕高
#define SCREEN_HEIGHT    ([[UIScreen mainScreen] bounds].size.height)

@interface nextViewController ()

@end

@implementation nextViewController
//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    
//    self.navigationController.navigationBarHidden = YES;
//    
////    [self.navigationController setNavigationBarHidden:YES animated:YES];
//    
//    
//    
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    [self setTitleBar];
    
    UIButton *dlBut = [[UIButton alloc]initWithFrame:CGRectMake(40, self.view.frame.size.height-40, 100, 40)];
    dlBut.backgroundColor = [UIColor redColor];
    [dlBut addTarget:self action:@selector(dengluButClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dlBut];
    
}

-(void)dengluButClick{

    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    app.tabBar.myBadgeView.hidden = YES;
    
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)setTitleBar{
    
    UIView *tbaView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 64)];
    tbaView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:tbaView];
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.hidesBottomBarWhenPushed=YES;
    nexttowViewController *vc = [[nexttowViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
//    self.hidesBottomBarWhenPushed=NO;
    
//    [self.navigationController popViewControllerAnimated:YES];
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
