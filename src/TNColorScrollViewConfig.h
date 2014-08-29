//
//  TNColorScrollViewConfig.h
//  TNColorScrollView
//
//  Created by Frederik Jacques on 29/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TNColorScrollViewConfig : NSObject

@property (nonatomic, strong) NSArray *colorDataObjects;

@property (nonatomic) BOOL scrollHorizontal;
@property (nonatomic) BOOL pagingEnabled;
@property (nonatomic) BOOL bounces;
@property (nonatomic) BOOL showsHorizontalScrollIndicator;
@property (nonatomic) BOOL showsVerticalScrollIndicator;

- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects;
- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects pagingEnabled:(BOOL)pagingEnabled;
- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects pagingEnabled:(BOOL)pagingEnabled bounces:(BOOL)bounces;
- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects bounces:(BOOL)bounces showsHorizontalScrollIndicator:(BOOL)showsHorizontalScrollIndicator showsVerticalScrollIndicator:(BOOL)showsVerticalScrollIndidator pagingEnabled:(BOOL)pagingEnabled scrollHorizontal:(BOOL)scrollHorizontal;

@end
