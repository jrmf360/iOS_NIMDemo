//
//  JRMFSington.h
//  NIM
//
//  Created by Criss on 2016/12/22.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface JRMFSington : NSObject

+ (JRMFSington *)GetPacketSington;

- (void)ClearJPacketData;

/**
 *  渠道信息
 */
@property (nonatomic, strong) NSString * JrmfPartnerId;

/**
 第三方/验证Token值
 */
@property (nonatomic, strong) NSString * JrmfThirdToken;

@property (nonatomic, strong) NSString * currentUserID;

@property (assign, nonatomic) BOOL isOnline; // 是否是正式环境

@property (nonatomic,strong)  NSString *aliPaySchemeUrl; // 支付宝回调url

@property (nonatomic,strong)  NSString *weChatSchemeUrl; // 微信回调url


@end
