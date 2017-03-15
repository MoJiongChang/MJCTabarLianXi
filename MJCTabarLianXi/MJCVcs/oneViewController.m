//
//  oneViewController.m
//  MJCTabarLianXi
//
//  Created by gdshwhl007 on 16/11/4.
//  Copyright © 2016年 gdshwhl007. All rights reserved.
//

#import "oneViewController.h"
#import "nextViewController.h"



//屏幕宽
#define SCREEN_WIDTH     ([[UIScreen mainScreen] bounds].size.width)
//屏幕高
#define SCREEN_HEIGHT    ([[UIScreen mainScreen] bounds].size.height)

@interface oneViewController ()

@end

@implementation oneViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
//    self.navigationController.navigationBarHidden = YES;
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    [self setTitleBar];
}

-(void)setTitleBar{
    
    UIView *tbaView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 64)];
    tbaView.backgroundColor = [UIColor redColor];
    [self.view addSubview:tbaView];
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.hidesBottomBarWhenPushed=YES;
    nextViewController *vc = [[nextViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    self.hidesBottomBarWhenPushed=NO;
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
