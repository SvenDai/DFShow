//
//  MBProgressHUD+MBProgressHUD_Toast.m
//  DFLive
//
//  Created by daifeng on 2017/10/18.
//  Copyright © 2017年 fdai. All rights reserved.
//

#import "MBProgressHUD+MBProgressHUD_Toast.h"
#import "UIColor+Hex.h"

@implementation MBProgressHUD (MBProgressHUD_Toast)

+(MBProgressHUD *)showToastToView:(UIView *)view withText:(NSString *)text
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    [hud showToastWithText:text];
    return hud;
}

-(void)showToastWithText:(NSString *)text
{
    [self showAnimated:NO];
    [self setMode:MBProgressHUDModeText];
    self.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    //self.bezelView.color = [UIColor colorWithHexString:@"0x000000" alpha:0.4f];
    //self.label.textColor = [UIColor colorWithHexString:@"0xffffff" alpha:1.0f];
    self.userInteractionEnabled = NO;
    self.detailsLabel.text = text;
    self.detailsLabel.font = [UIFont boldSystemFontOfSize:16.];
    //    设置视图停留的时间
    [self hideAnimated:YES afterDelay:2.];
}

@end
