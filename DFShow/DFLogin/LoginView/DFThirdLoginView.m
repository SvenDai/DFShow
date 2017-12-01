//
//  DFThirdLoginView.m
//  DFShow
//
//  Created by daifeng on 2017/12/1.
//  Copyright © 2017年 daifeng. All rights reserved.
//

#import "DFThirdLoginView.h"

@interface DFThirdLoginView ()

@end

@implementation DFThirdLoginView

-(instancetype) initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

#pragma mark - private method
-(void) setup{
    UIImageView *sina   = [self createImageViewWithImage:@"wbloginicon_60x60" tag:LoginTypeSina];
    UIImageView *qq     = [self createImageViewWithImage:@"qqloginicon_60x60" tag:LoginTypeQQ];
    UIImageView *wechat = [self createImageViewWithImage:@"wxloginicon_60x60" tag:LoginTypeWeChat];
    
    [self addSubview:sina];
    [self addSubview:qq];
    [self addSubview:wechat];
    
    //[sina mas_mak]
}

-(UIImageView *) createImageViewWithImage:(NSString *) imageName tag:(NSUInteger) tag{
    UIImageView *imageV = [[UIImageView alloc]init];
    imageV.image = [UIImage imageNamed:imageName];
    imageV.userInteractionEnabled = YES;
    imageV.tag = tag;
    
    [imageV addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click:)]];
    
    return imageV;
}

-(void) click:(UITapGestureRecognizer*) tapGuesture{
    if (self.clickLogin) {
        self.clickLogin(tapGuesture.view.tag);
    }
}

@end
