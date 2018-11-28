//
//  XLYBankCardMessage.h
//  银行卡识别
//
//  Created by xuliying on 16/2/22.
//  Copyright © 2016年 xly. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,ReturnBankCardMessageType){
    ReturnAll = 0, //发行行名称及机构代码、卡名、卡种
    ReturnBankName,//发行行名称
    ReturenBankNameAndBankNumer,//发行行名称及机构代码
    ReturnBankCardName,//卡名
    ReturnBankCardType,//卡种
};

@interface XLYBankCardMessage : NSObject

+ (instancetype)shareInstance;

- (NSString *)xlyBankCardMessageWithBankCardNumber:(NSString *)bankCardNumber returnBankCardMessageType:(ReturnBankCardMessageType)type;

@end
