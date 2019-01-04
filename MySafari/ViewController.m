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
}


@end
