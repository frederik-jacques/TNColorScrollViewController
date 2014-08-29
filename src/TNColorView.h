//
//  TNColorView.h
//  TNColorScrollView
//
//  Created by Frederik Jacques on 28/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TNColorViewData.h"

@interface TNColorView : UIView

@property (nonatomic, strong) TNColorViewData *colorViewData;


- (id)initWithFrame:(CGRect)frame andColorViewData:(TNColorViewData *)colorViewData;

@end
