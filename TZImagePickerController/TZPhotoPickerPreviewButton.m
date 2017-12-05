//
//  TZPhotoPickerPreviewButton.m
//  test
//
//  Created by hf on 2017/12/4.
//  Copyright © 2017年 hf. All rights reserved.
//

#import "TZPhotoPickerPreviewButton.h"
#import "TZImagePickerController.h"

@implementation TZPhotoPickerPreviewButton

+(instancetype)returnTZPhotoPickerPreviewButtonWithFrame:(CGRect)frame andImage:(UIImage *)image andTagert:(UIViewController *)vc{
    return [[TZPhotoPickerPreviewButton alloc]initWithFrame:frame andImage:(UIImage *)image andTagert:vc];
}

-(instancetype)initWithFrame:(CGRect)frame andImage:(UIImage *)image andTagert:(UIViewController *)vc{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundImage:image forState:UIControlStateNormal];
        UIButton *selectPhotoButton = [[UIButton alloc] init];
        [self addSubview:selectPhotoButton];
        selectPhotoButton.frame = CGRectMake(self.frame.size.width - 44+10, -10, 44, 44);
        [selectPhotoButton addTarget:self action:@selector(selectPhotoButtonClick:) forControlEvents:UIControlEventTouchUpInside];
//        [selectPhotoButton setImage:[UIImage imageNamed:@"photo_sel_photoPickerVc"] forState:UIControlStateNormal];
        selectPhotoButton.tag = self.tag;
        
        NSBundle *bundle = [NSBundle bundleForClass:[TZImagePickerController class]];
        NSURL *url = [bundle URLForResource:@"TZImagePickerController" withExtension:@"bundle"];
        bundle = [NSBundle bundleWithURL:url];
        
        NSBundle *imageBundle = [NSBundle tz_imagePickerBundle];
        NSString *imagePath = [imageBundle pathForResource:@"photo_sel_previewVc@2x" ofType:@"png"];
        UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
        if (!image) {
            // 兼容业务方自己设置图片的方式
            image = [UIImage imageNamed:@"photo_sel_previewVc@2x"];
        }
        
        [selectPhotoButton setBackgroundImage:image forState:UIControlStateNormal];
        [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}


-(void)selectPhotoButtonClick:(UIButton *)btn{
    self.cancelSelectPhotoBlock(_model);
}

-(void)buttonClick:(UIButton *)btn{
    self.bottomImageButtonShowPreView(btn);
}

@end
