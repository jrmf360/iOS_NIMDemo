//
//  JRMFRedPacketManager.m
//  NIM
//
//  Created by Criss on 2017/8/10.
//  Copyright © 2017年 Netease. All rights reserved.
//

#import "JRMFRedPacketManager.h"
#import "JRMFHeader.h"

@implementation JRMFRedPacketManager

+ (instancetype)sharedManager {
    static JRMFRedPacketManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)fetchTokenWithRedPacketRequest:(NIMRedPacketTokenRequest *)request completion:(JRMFRedPacketTokenFetchBlock)completion {
    
    NSString *userId = [JRMFSington GetPacketSington].currentUserID;
    NSString *partnerId = [JRMFSington GetPacketSington].JrmfPartnerId;
    
    NSString *url = [NSString stringWithFormat:@"https://yun-test.jrmf360.com/api/v1/%@/getBateThirdToken.shtml", [JRMFSington GetPacketSington].JrmfPartnerId];
    NSString *paramStr = [NSString stringWithFormat:@"custUid=%@&partnerId=%@", userId, partnerId];
    [JYangLib postGetRequestWithLink:url parameter:paramStr Success:^(NSURLSessionDataTask *task, NSDictionary *responseObj) {
        completion(nil, responseObj[@"thirdToken"]);
    } Fail:^(NSURLSessionDataTask *task, NSError *error) {
        completion(error, nil);
    }];
}

@end
