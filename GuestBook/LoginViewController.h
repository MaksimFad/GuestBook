//
//  LoginViewController.h
//  GuestBook
//
//  Created by MAKSIM FADEICHEV on 09.10.16.
//  Copyright © 2016 Maksim Fadeichev. All rights reserved.
//


#import "UIKit/UIKit.h"

@class AccessToken;

typedef void(^LoginCompetionBlock)(AccessToken *token);

@interface LoginViewController : UIViewController

- (instancetype) initWithCompetionBlock:(LoginCompetionBlock) competionBlock;

@end
