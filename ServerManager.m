//
//  ServerManager.m
//  GuestBook
//
//  Created by MAKSIM FADEICHEV on 03.09.16.
//  Copyright © 2016 Maksim Fadeichev. All rights reserved.
//

#import "ServerManager.h"
#import <AFNetworking.h>

#import "AccessToken.h"
#import "LoginViewController.h"


@interface ServerManager ()

@property (strong, nonatomic) AccessToken *accessToken;

@end

@implementation ServerManager

+ (instancetype)sharedManager {
    
    static ServerManager *manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [ServerManager new];
    });
    return manager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSURL * url = [NSURL URLWithString:@""];
        
    }
    return self;
}

- (void)authorizeUser:(void(^)(User *user))completion {
    
    LoginViewController *loginView =
    [[LoginViewController alloc] initWithCompetionBlock:^(AccessToken *token) {
        self.accessToken = token;
        
        if (completion) {
            completion(nil);
        }
    }];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:loginView];
    
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    [rootViewController presentViewController:navController
                                     animated:YES
                                   completion:nil];
    
    
    
    
    
    
}



@end
