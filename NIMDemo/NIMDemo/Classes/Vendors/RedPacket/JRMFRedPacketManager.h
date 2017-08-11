//
//  JRMFRedPacketManager.h
//  NIM
//
//  Created by Criss on 2017/8/10.
//  Copyright © 2017年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^JRMFRedPacketTokenFetchBlock)(NSError * __nullable error, NSString * __nullable token);


@interface JRMFRedPacketManager : NSObject

+ (instancetype)sharedManager;

/**
 *  获取红包服务 token 的回调
 *
 *  @param request    红包服务请求
 *  @param completion 获取红包 token 回调
 */
- (void)fetchTokenWithRedPacketRequest:(NIMRedPacketTokenRequest *)request
                            completion:(nullable JRMFRedPacketTokenFetchBlock)completion;

@end

NS_ASSUME_NONNULL_END
