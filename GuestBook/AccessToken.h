//
//  AccessToken.h
//  GuestBook
//
//  Created by MAKSIM FADEICHEV on 09.10.16.
//  Copyright © 2016 Maksim Fadeichev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccessToken : NSObject
/*
** Authenticated requests,
** These tokens are unique to a user and should be stored securely
*/
@property (strong, nonatomic) NSString *access_token;

/*
**  App should handle the case that either the user revokes access.
**  Or Instagram expires the token after some period of time.
*/
@property (strong, nonatomic) NSDate *expirationDate;

@property (strong, nonatomic) NSString *userID;

@end
