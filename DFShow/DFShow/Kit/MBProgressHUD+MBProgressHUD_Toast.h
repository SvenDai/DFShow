//
//  MBProgressHUD+MBProgressHUD_Toast.h
//  DFLive
//
//  Created by daifeng on 2017/10/18.
//  Copyright © 2017年 fdai. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (MBProgressHUD_Toast)

+(MBProgressHUD *)showToastToView:(UIView *)view withText:(NSString *)text;

@end
