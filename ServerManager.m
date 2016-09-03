//
//  ServerManager.m
//  GuestBook
//
//  Created by MAKSIM FADEICHEV on 03.09.16.
//  Copyright © 2016 Maksim Fadeichev. All rights reserved.
//

#import "ServerManager.h"
#import <AFNetworking.h>

@implementation ServerManager

+ (instancetype)sharedManager {
    
    static ServerManager *manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [ServerManager new];
    });
    return manager;
}

- (void) autoriseUser:(void(^)(User* user))completion {
    
}
@end
