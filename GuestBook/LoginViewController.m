//
//  LoginViewController.m
//  GuestBook
//
//  Created by MAKSIM FADEICHEV on 09.10.16.
//  Copyright © 2016 Maksim Fadeichev. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController () <UIWebViewDelegate>

@property (copy, nonatomic) LoginCompetionBlock competionBlock;

@end

@implementation LoginViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createWebView];
    [self createBarButtonItem];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithCompetionBlock:(LoginCompetionBlock) competionBlock {
    
    self = [super init];
    if (self) {
        self.competionBlock = competionBlock;
    }
    return self;
}

#pragma mark - Set Up Veiw

- (void)createWebView {
    
    UIWebView *webView = [UIWebView new];
    webView.frame = self.view.bounds;
    webView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    [self.view addSubview:webView];
}

- (void)createBarButtonItem {
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                                          target:self
                                                                          action:@selector(actionCancel:)];
    item.title = @"Login";
    
    [self.navigationItem setRightBarButtonItem:item animated:NO];
}

#pragma mark - Actions

- (void)actionCancel:(UIBarButtonItem *)item {
    
    if (self.competionBlock) {
        self.competionBlock(nil);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView {
    //[self.activityIndicatorView startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    //[self.activityIndicatorView stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    //[self.activityIndicatorView stopAnimating];
}

@end
