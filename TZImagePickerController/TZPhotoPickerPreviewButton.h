//
//  TZPhotoPickerPreviewButton.h
//  test
//
//  Created by hf on 2017/12/4.
//  Copyright © 2017年 hf. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TZAssetModel.h"

@interface TZPhotoPickerPreviewButton : UIButton

+(instancetype)returnTZPhotoPickerPreviewButtonWithFrame:(CGRect)frame andImage:(UIImage *)image andTagert:(UIViewController *)vc;

-(instancetype)initWithFrame:(CGRect)frame andImage:(UIImage *)image andTagert:(UIViewController *)vc;


//add
@property (nonatomic, copy) void (^cancelSelectPhotoBlock)(TZAssetModel *model);

@property (nonatomic, copy) void (^bottomImageButtonShowPreView)(UIButton *btn);

@property (nonatomic,strong) UIImage *modelImage;

@property (nonatomic, weak) TZAssetModel *model;

@end
