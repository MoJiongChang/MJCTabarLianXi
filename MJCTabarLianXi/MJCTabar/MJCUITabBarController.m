//
//  MJCUITabBarController.m
//  MJCTabarLianXi
//
//  Created by gdshwhl007 on 16/11/4.
//  Copyright © 2016年 gdshwhl007. All rights reserved.
//

#import "MJCUITabBarController.h"

#import "AppDelegate.h"

#import "oneViewController.h"
#import "towViewController.h"
#import "threeViewController.h"
#import "fourthViewController.h"

//屏幕宽
#define SCREEN_WIDTH     ([[UIScreen mainScreen] bounds].size.width)
//屏幕高
#define SCREEN_HEIGHT    ([[UIScreen mainScreen] bounds].size.height)


//获取AppDelegate对象
#define APP_DELEGATE     ([[UIApplication sharedApplication] delegate])
//获取Window窗口
#define KEY_WINDOW       ([[UIApplication sharedApplication] keyWindow])


#define RGB(r,g,b,a)  [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]


@interface MJCUITabBarController ()
{
    UIImageView *sel_image;
    UIView *buttom_view;
    
    UIView *buttonView1;
    UIView *buttonView2;
    UIView *buttonView3;
    UIView *buttonView4;
    
    UIButton *Button1;
    UIButton *Button2;
    UIButton *Button3;
    UIButton *Button4;
    
    UIImageView *buttonImage1;
    UIImageView *buttonImage2;
    UIImageView *buttonImage3;
    UIImageView *buttonImage4;
    
    UILabel *buttonLabel1;
    UILabel *buttonLabel2;
    UILabel *buttonLabel3;
    UILabel *buttonLabel4;
    
    
    oneViewController *ovc;
    towViewController *tvc;
    threeViewController *threvc;
    fourthViewController *fvc;
}

@end

@implementation MJCUITabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initializeTabBar];
    [self tabBarClicked:Button1];
}
#pragma mark- 设置根视图 和 tabBar
-(void)initializeTabBar
{
   
    ovc = [[oneViewController alloc]init];
    UINavigationController *oNC = [[UINavigationController alloc] initWithRootViewController:ovc];
  
    tvc = [[towViewController alloc]init];
    UINavigationController *tNC = [[UINavigationController alloc] initWithRootViewController:tvc];
  
    threvc=[[threeViewController alloc]init];
    UINavigationController *thNC = [[UINavigationController alloc] initWithRootViewController:threvc];
   
    fvc=[[fourthViewController alloc]init];
    UINavigationController *fNC = [[UINavigationController alloc] initWithRootViewController:fvc];
    
    self.viewControllers = @[oNC,tNC,thNC,fNC];
    
    //自定义tabBar
    if (!buttom_view){
        
        //根视图
        buttom_view = [[UIView alloc]initWithFrame:CGRectMake(0,[[UIScreen mainScreen] bounds].size.height-49, [[UIScreen mainScreen] bounds].size.width, 49)];
        buttom_view.backgroundColor = [UIColor clearColor];
        
        
    }
    if (!buttonView1){
        buttonView1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH/4.f, 49)];
        buttonView1.backgroundColor = [UIColor clearColor];
        Button1 = [UIButton buttonWithType:UIButtonTypeCustom];
        Button1.backgroundColor = [UIColor clearColor];
        Button1.frame = CGRectMake(0, 0, SCREEN_WIDTH/4.f, 49);
        [Button1 addTarget:self action:@selector(tabBarClicked:) forControlEvents:UIControlEventTouchUpInside];
        buttonImage1 = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH/4.f-25)/2.f, 4, 25, 20)];
        buttonImage1.image = [UIImage imageNamed:@"leadbar_icon2"];
        
        buttonLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 30, SCREEN_WIDTH/4.f, 18)];
        buttonLabel1.backgroundColor = [UIColor clearColor];
        buttonLabel1.text = @"首页";
        buttonLabel1.textAlignment = NSTextAlignmentCenter;
        buttonLabel1.font = [UIFont systemFontOfSize:14.0];
        buttonLabel1.textColor = [UIColor grayColor];
        
        [buttonView1 addSubview:Button1];
        [buttonView1 addSubview:buttonImage1];
        [buttonView1 addSubview:buttonLabel1];
        [buttom_view addSubview:buttonView1];
    }
    if (!buttonView2){
        buttonView2 = [[UIView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/4.f, 0, SCREEN_WIDTH/4.f, 49)];
        buttonView2.backgroundColor = [UIColor clearColor];
        Button2 = [UIButton buttonWithType:UIButtonTypeCustom];
        Button2.backgroundColor = [UIColor clearColor];
        Button2.frame = CGRectMake(0, 0, SCREEN_WIDTH/4.f, 49);
        [Button2 addTarget:self action:@selector(tabBarClicked:) forControlEvents:UIControlEventTouchUpInside];
        buttonImage2 = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH/4.f-25)/2.f, 4, 25, 20)];
        buttonImage2.image = [UIImage imageNamed:@"leadbar_icon2"];
        
        buttonLabel2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 30, SCREEN_WIDTH/4.f, 18)];
        buttonLabel2.backgroundColor = [UIColor clearColor];
        buttonLabel2.text = @"tow";
        buttonLabel2.textAlignment = NSTextAlignmentCenter;
        buttonLabel2.font = [UIFont systemFontOfSize:14.0];
        buttonLabel2.textColor = [UIColor grayColor];
        
        [buttonView2 addSubview:Button2];
        [buttonView2 addSubview:buttonImage2];
        [buttonView2 addSubview:buttonLabel2];
        [buttom_view addSubview:buttonView2];
    }
    if (!buttonView3){
        buttonView3 = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH/4.f)*2,0,SCREEN_WIDTH/4.f, 49)];
        buttonView3.backgroundColor = [UIColor clearColor];
        Button3 = [UIButton buttonWithType:UIButtonTypeCustom];
        Button3.backgroundColor = [UIColor clearColor];
        Button3.frame = CGRectMake(0, 0, SCREEN_WIDTH/4.f, 49);
        [Button3 addTarget:self action:@selector(tabBarClicked:) forControlEvents:UIControlEventTouchUpInside];
        buttonImage3 = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH/4.f-25)/2.f, 4, 25, 20)];
        buttonImage3.image = [UIImage imageNamed:@"leadbar_icon2"];
        
        buttonLabel3 = [[UILabel alloc]initWithFrame:CGRectMake(0, 30, SCREEN_WIDTH/4.f, 18)];
        buttonLabel3.backgroundColor = [UIColor clearColor];
        buttonLabel3.text = @"three";
        buttonLabel3.textAlignment = NSTextAlignmentCenter;
        buttonLabel3.font = [UIFont systemFontOfSize:14.0];
        buttonLabel3.textColor = [UIColor grayColor];
        
        [buttonView3 addSubview:Button3];
        [buttonView3 addSubview:buttonImage3];
        [buttonView3 addSubview:buttonLabel3];
        [buttom_view addSubview:buttonView3];
    }
    if (!buttonView4){
        buttonView4 = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH/4.f)*3, 0, SCREEN_WIDTH/4.f, 49)];
        buttonView4.backgroundColor = [UIColor clearColor];
        Button4 = [UIButton buttonWithType:UIButtonTypeCustom];
        Button4.backgroundColor = [UIColor clearColor];
        Button4.frame = CGRectMake(0, 0, SCREEN_WIDTH/4.f, 49);
        [Button4 addTarget:self action:@selector(tabBarClicked:) forControlEvents:UIControlEventTouchUpInside];
        buttonImage4 = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH/4.f-25)/2.f, 5, 25, 20)];
        buttonImage4.image = [UIImage imageNamed:@"leadbar_icon2"];
        
        buttonLabel4 = [[UILabel alloc]initWithFrame:CGRectMake(0, 30, SCREEN_WIDTH/4.f, 18)];
        buttonLabel4.backgroundColor = [UIColor clearColor];
        buttonLabel4.text = @"我的";
        buttonLabel4.textAlignment = NSTextAlignmentCenter;
        buttonLabel4.font = [UIFont systemFontOfSize:14.0];
        buttonLabel4.textColor = [UIColor grayColor];
        
        [buttonView4 addSubview:Button4];
        [buttonView4 addSubview:buttonImage4];
        [buttonView4 addSubview:buttonLabel4];
        [buttom_view addSubview:buttonView4];
        
        _myBadgeView=[[UIImageView alloc]initWithFrame:CGRectMake(buttonView4.frame.size.width - 16, -4, 20, 20)];
        //                    _myBadgeView.text=@"dot";
        _myBadgeView.backgroundColor = [UIColor redColor];
        _myBadgeView.hidden=NO;
        [buttonView4 addSubview:_myBadgeView];
    
    }
    //self.tabBar.hidden = YES;
    //[self.tabBar removeFromSuperview];
    //[self.view addSubview:buttom_view];
    buttom_view.frame=CGRectMake(0, 0, SCREEN_WIDTH, 49);
    [self.tabBar addSubview:buttom_view];
}
#pragma mark- 是否显示我的标签小红点视图
-(void)setMyBadgeViewHidden:(BOOL)hidden
{
//        _myBadgeView.hidden=hidden;
}
#pragma mark- 选择控制器
-(void)switchSelectedTabbarIndex:(NSInteger)selectedIndex;
{
    if (selectedIndex == 0){
        [self tabBarClicked:Button1];
    }else if (selectedIndex == 1){
        [self tabBarClicked:Button2];
    }else if (selectedIndex == 2){
        [self tabBarClicked:Button3];
    }else if (selectedIndex == 3){
        [self tabBarClicked:Button4];
    }
}
#pragma mark - 选择视图控制器
-(void)tabBarClicked:(UIButton *)sender
{
    AppDelegate * app = APP_DELEGATE;
    if (sender == Button1){
        [self changeTabBarImagesAtIndex:0];
        self.selectedIndex = 0;
    }else if (sender == Button2){
        [self changeTabBarImagesAtIndex:1];
        self.selectedIndex = 1;
    }else if (sender == Button3){
        [self changeTabBarImagesAtIndex:2];
        self.selectedIndex = 2;
    }else if (sender == Button4){
        
        [self changeTabBarImagesAtIndex:3];
        self.selectedIndex = 3;
        
//        //判断是否登录
//        if (1){
//            //如果登录了就改变tabBar的selectIndex
//            [self changeTabBarImagesAtIndex:3];
//            self.selectedIndex = 3;
//        }else{
//            //去登录页面
//            [YCAutoLogin goLoginWithController:self];
//            SJLoginVC * loginVC = [[SJLoginVC alloc]init];
//            [self presentViewController:loginVC animated:YES completion:nil];
//        }
    }
}
#pragma mark - 选择按钮
-(void)changeTabBarImagesAtIndex:(NSInteger)index
{
    buttonImage1.image = [UIImage imageNamed:@"leadbar_icon2"];
    buttonLabel1.textColor = RGB(140, 140, 140,1);
    buttonImage2.image = [UIImage imageNamed:@"leadbar_icon2"];
    buttonLabel2.textColor = RGB(140, 140, 140,1);
    buttonImage3.image = [UIImage imageNamed:@"leadbar_icon2"];
    buttonLabel3.textColor = RGB(140, 140, 140,1);
    buttonImage4.image = [UIImage imageNamed:@"leadbar_icon2"];
    buttonLabel4.textColor = RGB(140, 140, 140,1);
    if (index == 0){
        buttonImage1.image = [UIImage imageNamed:@"leadbar_icon2s"];
        buttonLabel1.textColor = [UIColor redColor];
    }else if (index == 1){
        buttonImage2.image = [UIImage imageNamed:@"leadbar_icon2s"];
        buttonLabel2.textColor = [UIColor redColor];;
    }else if(index ==2){
        buttonImage3.image = [UIImage imageNamed:@"leadbar_icon2s"];
        buttonLabel3.textColor = [UIColor redColor];;
    }else if(index ==3){
        buttonImage4.image = [UIImage imageNamed:@"leadbar_icon2s"];
        buttonLabel4.textColor = [UIColor redColor];;
    }
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
