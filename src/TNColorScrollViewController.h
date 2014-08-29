//
//  TNColorScrollViewController.h
//  TNColorScrollView
//
//  Created by Frederik Jacques on 28/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TNColorScrollView.h"
#import "TNColorScrollViewConfig.h"

@interface TNColorScrollViewController : UIViewController <TNColorScrollViewDataSource, TNColorScrollViewDelegate>

@property (nonatomic, strong) TNColorScrollView *view;
@property (nonatomic, strong) TNColorScrollViewConfig *config;

- (instancetype)initWithColorScrollViewConfig:(TNColorScrollViewConfig *)colorScrollViewConfig;

@end
