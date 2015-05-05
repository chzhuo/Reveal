//
//  ViewController.m
//  testDemo
//
//  Created by 张诚 on 15/5/5.
//  Copyright (c) 2015年 zhangcheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor purpleColor];
    UILabel*label=[[UILabel alloc]initWithFrame:CGRectMake(0, 100, 200, 100)];
    label.text=@"麻生希~~偶的女神咩";
    [self.view addSubview:label];
    
    
    UIButton*button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(0, 0, 200, 100);
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [label addSubview:button];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)buttonClick{

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
