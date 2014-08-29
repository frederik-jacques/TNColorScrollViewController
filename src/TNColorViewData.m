//
//  TNColorViewData.m
//  TNColorScrollView
//
//  Created by Frederik Jacques on 28/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNColorViewData.h"
#import "TNColorView.h"

@implementation TNColorViewData

#pragma mark - Lifecycle

- (instancetype)init {
    
    return [self initWithColor:[UIColor redColor] andCustomClass:[TNColorView class]];
    
}

- (instancetype)initWithColor:(UIColor *)color {
    
    return [self initWithColor:color andCustomClass:[TNColorView class]];
    
}

- (instancetype)initWithCustomClass:(Class)customClass {
    
    return [self initWithColor:[UIColor redColor] andCustomClass:customClass];
    
}

- (instancetype)initWithColor:(UIColor *)color andCustomClass:(Class)customClass {
    
    self = [super init];
    
    if (self) {
        
        _color = color;
        _subClass = customClass;
        
    }
    
    return self;
}

#pragma mark - NSCopying

#pragma mark - Private methods

#pragma mark - Public methods

#pragma mark - Custom Accessors

#pragma mark - Delegate methods

#pragma mark - Debug

- (NSString *)description {
	return [NSString stringWithFormat:@"[TNColourViewData]"];
}

@end
