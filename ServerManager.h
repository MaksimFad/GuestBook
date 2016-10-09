//
//  ServerManager.h
//  GuestBook
//
//  Created by MAKSIM FADEICHEV on 03.09.16.
//  Copyright © 2016 Maksim Fadeichev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"


@interface ServerManager : NSObject

+ (instancetype)sharedManager;

- (void)authorizeUser:(void(^)(User *user))completion;

@end
