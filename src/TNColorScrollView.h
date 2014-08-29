//
//  TNColorScrollView.h
//  TNColorScrollView
//
//  Created by Frederik Jacques on 28/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TNColorViewData.h"
#import "TNColorView.h"
#import "TNColorScrollViewConfig.h"

@class TNColorScrollView;

@protocol TNColorScrollViewDataSource <NSObject>

- (NSUInteger)numberOfViewsInScrollView;

@end

@protocol TNColorScrollViewDelegate <NSObject>

- (TNColorViewData *)scrollView:(TNColorScrollView *)scrollView colorViewDataForIndex:(NSUInteger)index;
- (TNColorScrollViewConfig *)configForScrollView;

@optional
- (void)scrollViewSizeHasBeenUpdated;

@end

@interface TNColorScrollView : UIView

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, weak) id<TNColorScrollViewDataSource> dataSource;
@property (nonatomic, weak) id<TNColorScrollViewDelegate> delegate;

- (void)createViews;
- (void)updateScrollViewAfterOrientationChangeToPage:(NSUInteger)page;

@end
