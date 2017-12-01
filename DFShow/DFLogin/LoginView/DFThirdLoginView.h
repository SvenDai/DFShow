//
//  DFThirdLoginView.h
//  DFShow
//
//  Created by daifeng on 2017/12/1.
//  Copyright © 2017年 daifeng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger,LoginType) {
    LoginTypeSina,      ///> Sina
    LoginTypeQQ,        ///> QQ
    LoginTypeWeChat     ///> WeChat
};

@interface DFThirdLoginView : UIView

/**
 点击登录按钮事件
 */
@property(nonatomic,copy) void (^clickLogin)(LoginType type);

@end
