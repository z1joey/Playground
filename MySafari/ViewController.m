//
//  ViewController.m
//  MySafari
//
//  Created by Yi Zhang on 4/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController () <WKNavigationDelegate, UIGestureRecognizerDelegate>
{
    WKWebView * _webView;
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
    _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 64, View_Size.width, View_Size.height-64)];
    _webView.scrollView.bounces = NO;
    //_webView.delegate = self;
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
//    if (_searchBar.text.length > 0) {
//        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http//%@", _searchBar.text]];
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        [_webView loadRequest:request];
//    } else {
//        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"网址不能为空" preferredStyle:UIAlertControllerStyleAlert];
//        UIAlertAction *action = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        }];
//        [alert addAction:action];
//        [self presentViewController:alert animated:YES completion:nil];
//        return
//    }
}

- (void) creatToolBar
{
    self.navigationController.toolbarHidden = NO;
    UIBarButtonItem *itemHistory = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(goHistory)];
    UIBarButtonItem *itemLike = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(goLike)];
    UIBarButtonItem *itemBack = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    UIBarButtonItem *itemForward = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonItemStylePlain target:self action:@selector(goForward)];
    UIBarButtonItem *emptyItem1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:@selector(goForward)];
    UIBarButtonItem *emptyItem2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:@selector(goForward)];
    UIBarButtonItem *emptyItem3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:@selector(goForward)];
    self.toolbarItems = @[itemHistory, emptyItem1, itemLike, emptyItem2, itemBack, emptyItem3, itemForward];
}

- (void) creatGesture
{
    _upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(upSwipe)];
    _upSwipe.delegate = self;
    _upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    [_webView addGestureRecognizer:_upSwipe];
    
    _downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(downSwipe)];
    _downSwipe.delegate = self;
    _downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
    [_webView addGestureRecognizer:_downSwipe];
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
        self.navigationItem.titleView = self->_titleLabel;
    }];
    [self.navigationController setToolbarHidden:YES animated:YES];
    _isUp = YES;
}

- (void) downSwipe
{
    if (_webView.scrollView.contentOffset.y == 0 && _isUp) {
        self.navigationItem.titleView = nil;
        _webView.frame = CGRectMake(0, 64, View_Size.width, View_Size.height - 64);
        [UIView animateWithDuration:0.3 animations:^{
            self.navigationController.navigationBar.frame = CGRectMake(0, 0, NavigationBar_Size.width, 64);
            [self.navigationController.navigationBar setTitleVerticalPositionAdjustment:0 forBarMetrics:UIBarMetricsDefault];
        } completion:^(BOOL finished) {
            self.navigationItem.titleView = self->_searchBar;
        }];
        [self.navigationController setToolbarHidden:NO animated:YES];
        _isUp = NO;
    }
}

- (void) goHistory
{
    
}

- (void) goLike
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"请选择操作" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"添加收藏" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSArray *array = [[NSUserDefaults standardUserDefaults] valueForKey:@"Like"];
        if (! array) {
            array = [[NSArray alloc] init];
        }
        NSMutableArray *newArray = [[NSMutableArray alloc] initWithArray:array];
        //[newArray addObject:_webView.request.URL.absoluteString];
        [[NSUserDefaults standardUserDefaults] setValue:newArray forKey:@"Like"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"查看收藏" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSArray *array = [[NSUserDefaults standardUserDefaults] valueForKey:@"Like"];
        // TODO: LikeTableVC
    }];
    UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"查看收藏" style:UIAlertActionStyleCancel handler: nil];
    
    [alert addAction:action1];
    [alert addAction:action2];
    [alert addAction:action3];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void) goBack
{
    if ([_webView canGoBack]) {
        [_webView goBack];
    }
}

- (void) goForward
{
    if ([_webView canGoForward]) {
        [_webView goForward];
    }
}

- (void) loadURL:(NSString *)urlStr
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@", urlStr]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
}

- (void) webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation
{
    
}

@end
