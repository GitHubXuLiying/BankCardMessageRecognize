//
//  ViewController.m
//  银行卡识别
//
//  Created by xuliying on 16/2/22.
//  Copyright © 2016年 xly. All rights reserved.
//

#import "ViewController.h"
#import "XLYBankCardMessage.h"
@interface ViewController (){
    UILabel *lab;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
   lab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    [self.view addSubview:lab];
    lab.numberOfLines = 0;
    lab.textAlignment = NSTextAlignmentCenter;
    lab.textColor = [UIColor blackColor];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 50)];
    label.text = @"银行卡号：";
    label.textColor = [UIColor blackColor];
    label.font = [UIFont systemFontOfSize:15];
    label.textAlignment = YES;
    label.backgroundColor = [UIColor whiteColor];
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(50, 200, 300, 50)];
    tf.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:tf];
    tf.leftView = label;
    tf.leftViewMode = UITextFieldViewModeAlways;
    tf.keyboardType =  UIKeyboardTypeDecimalPad;
    [tf addTarget:self action:@selector(tfTextChange:) forControlEvents:UIControlEventEditingChanged];
    tf.center = CGPointMake(self.view.center.x, tf.center.y);
  
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)tfTextChange:(UITextField *)tf{
    lab.text = [[XLYBankCardMessage shareInstance] xlyBankCardMessageWithBankCardNumber:tf.text returnBankCardMessageType:0];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
