//
//  TZPhotoPickerController.h
//  TZImagePickerController
//
//  Created by 谭真 on 15/12/24.
//  Copyright © 2015年 谭真. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TZAlbumModel;
@interface TZPhotoPickerController : UIViewController

@property (nonatomic, assign) BOOL isFirstAppear;
@property (nonatomic, assign) NSInteger columnNumber;
@property (nonatomic, strong) TZAlbumModel *model;

//add
///是否打开下方排列
@property (nonatomic,assign) BOOL showBottomPreview;
@property (nonatomic,strong) UIScrollView *bottomPreView;
@property (nonatomic, copy) void (^pushImageToOthers)(UIImage *image);


@end


@interface TZCollectionView : UICollectionView

@end
