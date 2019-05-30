//
//  ViewController.m
//  UISwitch
//
//  Created by Civet on 2019/5/20.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//所有UIKit框架库中的控件以UI开头
//苹果官方的控件都定义在UIKit框架库中
//定义开关控件
@property(nonatomic,strong) UISwitch *mySwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _mySwitch = [[UISwitch alloc] init];
    
    //苹果官方的控件的位置设置
    //位置X，Y的值可以改变
    //宽度和高度无法改变
    _mySwitch.frame = CGRectMake(100, 100, 80, 40);
    
    _mySwitch.on = YES;
    [_mySwitch setOn:YES animated:YES];
    [self.view addSubview:_mySwitch];
    //设置开启状态的风格颜色
    [_mySwitch setOnTintColor:[UIColor blueColor]];
    //设置开关圆按钮的风格颜色
    [_mySwitch setThumbTintColor:[UIColor orangeColor]];
    //设置整体风格颜色
    [_mySwitch setTintColor:[UIColor purpleColor]];
    //向开关控件添加事件函数
    [_mySwitch addTarget:self action:@selector(switchChange:) forControlEvents:UIControlEventValueChanged];
}
//参数传入开关对象本身
-(void)switchChange:(UISwitch *)sw{
    //on表示当前结束的状态
    if (sw.on == YES){
        NSLog(@"开关被打开");
    }else{
        NSLog(@"开关被关闭!");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
