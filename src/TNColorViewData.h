//
//  TNColorViewData.h
//  TNColorScrollView
//
//  Created by Frederik Jacques on 28/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TNColorViewData : NSObject

@property (nonatomic, strong) UIColor *color;
@property (nonatomic) Class subClass;

- (instancetype)initWithColor:(UIColor *)color;
- (instancetype)initWithCustomClass:(Class)customClass;
- (instancetype)initWithColor:(UIColor *)color andCustomClass:(Class)customClass;

@end
