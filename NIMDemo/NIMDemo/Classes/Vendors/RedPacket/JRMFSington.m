//
//  JRMFSington.m
//  NIM
//
//  Created by Criss on 2016/12/22.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "JRMFSington.h"

static JRMFSington * sington = nil;

@implementation JRMFSington

+ (JRMFSington *)GetPacketSington {
    if (sington == nil) {
        sington = [[JRMFSington alloc] init];
    }
    return sington;
}

- (instancetype)init {
    if ([super init]) {
        //数据初始化
        [self PacketDataFormat];
    }
    return self;
}

- (void)ClearJPacketData {
    if (sington == nil) {
        return;
    }
    
    //数据初始化
    [self PacketDataFormat];
}

- (void)PacketDataFormat {
    _JrmfThirdToken = @"";
    _JrmfPartnerId = @"";
    _currentUserID = @"";
    _isOnline = NO; // 测试环境
    _aliPaySchemeUrl = @"alipay052969";
    _weChatSchemeUrl = @"wx2a5538052969956e";
}

- (NSString *)JrmfPartnerId {
    return @"closedbate";
}

- (NSString *)currentUserID {
    return [[NIMSDK sharedSDK].loginManager currentAccount];
}


@end
