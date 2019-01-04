//
//  ViewController.m
//  Login
//
//  Created by Yi Zhang on 4/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "ViewController.h"
#import "RegisViewController.h"

@interface ViewController ()
{
    UITextField * _loginTextField;
    UITextField * _passwordTextField;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //user textfield
    _loginTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 80, SCREEN_SIZE.width - 40, 30)];
    _loginTextField.borderStyle = UITextBorderStyleRoundedRect;
    _loginTextField.placeholder = @"请输入用户名";
    UIImageView * loginImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    loginImage.image = [UIImage imageNamed:@"icon"];
    _loginTextField.leftView = loginImage;
    _loginTextField.leftViewMode = UITextFieldViewModeAlways;
    
    //password textfield
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 130, SCREEN_SIZE.width - 40, 30)];
    _passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    _passwordTextField.placeholder = @"请输入用户名";
    UIImageView * passwordImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    passwordImage.image = [UIImage imageNamed:@"icon"];
    _passwordTextField.leftView = passwordImage;
    _passwordTextField.leftViewMode = UITextFieldViewModeAlways;
    
    //buttons
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(SCREEN_SIZE.width/4 - 50, 180, 100, 30);
    [button1 setTitle:@"登录" forState:UIControlStateNormal];
    button1.layer.masksToBounds = YES;
    button1.layer.cornerRadius = 10;
    button1.backgroundColor = [UIColor cyanColor];
    [button1 addTarget:self action:@selector(regis) forControlEvents:UIControlEventTouchUpInside];
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(SCREEN_SIZE.width/4*3 - 50, 180, 100, 30);
    [button2 setTitle:@"注册" forState:UIControlStateNormal];
    button2.layer.masksToBounds = YES;
    button2.layer.cornerRadius = 10;
    button2.backgroundColor = [UIColor cyanColor];
    [button2 addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_loginTextField];
    [self.view addSubview:_passwordTextField];
    [self.view addSubview:button1];
    [self.view addSubview:button2];
}

- (void) regis
{
    RegisViewController *con = [[RegisViewController alloc] init];
    [self presentViewController:con animated:YES completion:nil];
}

- (void) login
{
    if (_loginTextField.text.length == 0) {
        UIAlertController *alertCon = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"请输入用户名" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alertCon addAction:action];
        [self presentViewController:alertCon animated:YES completion:nil];
    }
}

@end
