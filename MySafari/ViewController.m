//
//  ViewController.m
//  MySafari
//
//  Created by Yi Zhang on 4/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIWebView * _webView;
    UITextField * _searchBar;
    BOOL _isUp;
    UILabel * _titleLabel;
    UISwipeGestureRecognizer * _upSwipe;
    UISwipeGestureRecognizer * _downSwipe;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 64, View_Size.width, View_Size.height-64)];
    _webView.scrollView.bounces = NO;
    _webView.delegate = self;
    _isUp = NO;
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, View_Size.width - 40, 20)];
    _titleLabel.backgroundColor = [UIColor clearColor];
    _titleLabel.font = [UIFont systemFontOfSize:14];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.baidu.com"]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
    [self.view addSubview:_webView];
}

- (void)creatSearchBar
{
    _searchBar = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, View_Size.width - 40, 30)];
    _searchBar.borderStyle = UITextBorderStyleRoundedRect;
    UIButton *goButton = [UIButton buttonWithType:UIButtonTypeSystem];
    
}

- (void)goWeb
{
    if (_searchBar.text.length > 0) {
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http//%@", _searchBar.text]];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [_webView loadRequest:request];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"网址不能为空" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        }]
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
        return
    }
}

- (void) creatGesture
{
    //_upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:<#(nullable SEL)#>]
}

- (void) upSwipe
{
    if (_isUp) {
        return;
    }
    self.navigationItem.titleView = nil;
    _webView.frame = CGRectMake(0, 40, View_Size.width, View_Size.height - 40);
    [UIView animateWithDuration:0.3 animations:^{
        self.navigationController.navigationBar.frame = CGRectMake(0, 0, NavigationBar_Size.width, 40);
        [self.navigationController.navigationBar setTitleVerticalPositionAdjustment:7 forBarMetrics:UIBarMetricsDefault];
    } completion:^(BOOL finished) {
        self.navigationItem.titleView = _titleLabel;
    }];
    [self.navigationController setToolbarHidden:YES animated:YES];
    _isUp = YES;
}

- (void) downSwipe
{
    if (_webView.scrollView.contentOffset.y == 0 && _isUp) {
        self.navigationItem.titleView = nil;
        _webView.frame = CGRectMake(0, 64, View_Size.width, View_Size.height - 64);
    }
}

@end
