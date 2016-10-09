//
//  ViewController.m
//  GuestBook
//
//  Created by MAKSIM FADEICHEV on 03.09.16.
//  Copyright © 2016 Maksim Fadeichev. All rights reserved.
//

#import "ViewController.h"
#import "ServerManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[ServerManager sharedManager] authorizeUser:^(User *user) {
        NSLog(@"User Autorised!!!");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
